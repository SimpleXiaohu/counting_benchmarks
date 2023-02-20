open Printf
open Regast
open String
open List
open Char
open Regexlex
open Regex
open Str
open Filename
open Unix

let outputSingleof line =
  try
    let lexbuf = Lexing.from_string (line ^ "\n") in
    let at = Regex.regex Regexlex.lexer lexbuf in
    print_string (fst (trantoPT 1 at))
  with _ -> print_string (line ^ ":error\n")

let teststr s f =
  "(assert (= x \"" ^ s ^ "\"))\n(assert (" ^ f ^ " x y))\n(check-sat)"

let genCountSMTBigLen s =
  "\n(declare-const X String)\n(assert (str.in_re X " ^ s
  ^ "))\n(assert (< 100 (str.len X)))\n(check-sat)\n(get-model)\n\n"

let genCountSMTSmallLen s =
  "\n(declare-const X String)\n(assert (str.in_re X " ^ s
  ^ "))\n(assert (< 20 (str.len X)))\n(check-sat)\n(get-model)\n\n"

let genCountSMTBigLenWithInter s =
  "\n(declare-const X String)\n\
  (assert (str.in_re X " ^ s^ "))\n\
  (assert (str.in_re X (_ re.loop 0 300) (re.range \"0\" \"9\")))\n\
  (assert (< 100 (str.len X)))\n\
  (check-sat)\n\
  (get-model)\n"

let genCountSMTSmallLenWithInter s =
  "\n(declare-const X String)\n\
  (assert (str.in_re X " ^ s ^ "))\n\
  (assert (str.in_re X (_ re.loop 0 300) (re.range \"0\" \"9\")))\n\
  (assert (< 20 (str.len X)))\n\
  (check-sat)\n\
  (get-model)\n"

let contains s1 s2 =
  let re = Str.regexp_string s2 in
  try
    ignore (Str.search_forward re s1 0);
    true
  with Not_found -> false

(* cli arguments *)
let usage_msg =
  "transform regexes in file: ./reg2smt <file1> -o <output subdir> -large\n\n\
   transform regexes in stdin: ./reg2smt -s <regex>\n"

let inputfile = ref ""
let outputsubdir = ref "test"
let inter = ref true
let singleReg = ref ""

let speclist =
  [
    ( "-o",
      Arg.Set_string outputsubdir,
      "The subdirectory used to store the output files" );
    ("-inter", Arg.Set inter, "Extact intersection regexes");
    ("-s", Arg.Set_string singleReg, "Transform a single regex");
  ]

let anon_fun filename = inputfile := filename
let () = Arg.parse speclist anon_fun usage_msg

(* make output subdirectory *)
let outputdir = parent_dir_name ^ dir_sep ^ "output" ^ dir_sep ^ !outputsubdir;;

if not (Sys.file_exists outputdir) then Sys.mkdir outputdir 0o777

(* generate smt2 benchmarks *)
let genCountSMT s =
  if contains !outputsubdir "large" then genCountSMTBigLen s
  else genCountSMTSmallLen s

let genCountSMTWithInter s =
  if contains !outputsubdir "large" then genCountSMTBigLenWithInter s
  else genCountSMTSmallLenWithInter s

let getSMT s = 
  if !inter then genCountSMTWithInter s
  else genCountSMT s

let outputSingleofTest line n =
  try
    let lexbuf = Lexing.from_string (line ^ "\n") in
    let at = Regex.regex Regexlex.lexer lexbuf in
    let outf =
      open_out (concat outputdir "instance" ^ string_of_int n ^ ".smt2")
    in
    output_string outf (";test regex " ^ line ^ "\n");
    output_string outf (getSMT (fst (trantoPT 1 at)));
    close_out outf
  with _ -> print_string (line ^ ":error\n")

let cnnt = ref 0

let rec allspace n s =
  if n < String.length s then
    if s.[n] <> ' ' && s.[n] <> '\t' && s.[n] <> '\n' then false
    else allspace (n + 1) s
  else true

exception ErrorArg of string

let rmSpace s =
  let ts = split_on_char ' ' s in
  String.concat "" ts

let rec process_a_line n ic f k =
  let line = input_line ic in
  if line = "end" then (
    print_newline ();
    close_in ic)
  else if allspace 0 line || line.[0] = '#' then process_a_line n ic f k
  else (
    outputSingleofTest line n;
    process_a_line (n + 1) ic f k)

let executeRegex f =
  try
    let ic = open_in f in
    process_a_line 1 ic f 1;
    print_string "----translation done----\n"
  with e -> raise e

let executeStdout s = outputSingleof s
let comment1 = "----------------------------------------------------\n"
let comment2 = "\tRun the command: reg2pt -c file \n\n"

let comment3 =
  "\tIt will generate the priority automata\n\
   \tfor all regexes in the file \"file\"\n"

let comment4 =
  "\tThe capture groups need to be explicitly\n\tdeclared by parentheses\n"

let comment5 =
  "\tRun the command: reg2pt -s regex \n\n\
   \tIt will generate the priority automata for the regex.\n\
   \tFor instance, reg2pt -s \"[ab]\", generating the alternation\n\
   \tof a and b\n"

let comment = comment5 ^ "\n" ^ comment1 ^ comment2 ^ comment3 ^ comment4

let main () =
  if singleReg = ref "" then executeRegex !inputfile
  else executeStdout !singleReg
(* (let lt = (Array.length Sys.argv) in
   if lt < 2 then (raise (ErrorArg "wrong arguments for the command reg2pt")) else
   (
       match (Sys.argv.(1)) with
          "-s" -> if lt > 3 then (executeStdout (Sys.argv.(2)))  else raise (ErrorArg "reg2pt needs more arguments")
        | "-c" -> if lt > 3 then (executeRegex (Sys.argv.(2))) else raise (ErrorArg "reg2pt needs more arguments")
        | _ ->    raise (ErrorArg "reg2pt only accepts -s and -c")
   )); print_string "\n" ;; *)

(* main() *)

let rec checkC ra =
  match ra with
  | Kstar r -> checkC r
  | LKstar r -> checkC r
  | Kplus r -> checkC r
  | LKplus r -> checkC r
  | Atom _ -> false
  | Capture _ -> true
  | Alt (r1, r2) -> checkC r1 || checkC r2
  | Concat (r1, r2) -> checkC r1 || checkC r2
  | LBR _ -> false
  | Lall -> false
  | Lallchar -> false
  | Lloop (r, n1, n2) -> true
  | Llloop (r, n1, n2) -> true
  | Lopt r -> checkC r
  | Loption r -> checkC r

let rec checkT ra =
  match ra with
  | Kstar _ -> true
  | LKstar _ -> true
  | Kplus _ -> true
  | LKplus _ -> true
  | Atom _ -> false
  | Capture r -> checkT r
  | Alt (r1, r2) -> checkT r1 || checkT r2
  | Concat (r1, r2) -> checkT r1 || checkT r2
  | LBR _ -> false
  | Lall -> false
  | Lallchar -> false
  | Lloop (r, n1, n2) -> true
  | Llloop (r, n1, n2) -> true
  | Lopt r -> checkT r
  | Loption r -> checkT r

let extract1 ss =
  let reg1 = regexp "{\"patterns\": \\[\"" in
  let reg2 = regexp "\"\\], \"type\":" in
  nth (Str.split reg2 (nth (Str.split reg1 ss) 0)) 0

let extract2 ss =
  let reg1 = regexp "{\"pattern\": \"" in
  let reg2 = regexp "\", \"supportedLangs\"" in
  nth (Str.split reg2 (nth (Str.split reg1 ss) 0)) 0

let onestep_pro s p =
  print_string "----";
  Str.global_replace (fst p) (snd p) s

let prearray =
  [
    (*
   (regexp "\\\\\"", "\"");
   (regexp "\\[\\^" , "justfortemp1");
   (regexp "\\\\\\^" , "justfortemp2");
   (regexp "\\\\\\$" , "justfortemp3");
   (regexp "\\^", "");
   (regexp "\\$", "");
   (regexp "justfortemp1" , "[^");
   (regexp "justfortemp2", "\\\\^");
   (regexp "justfortemp3", "\\\\$");
*)
    (regexp "\\([^\\]\\)/", "\\1\\/");
    (regexp "\\\\\\\\\\\\\\\\d", "\\\\d");
    (regexp "\\\\\\\\\\\\\\\\s", "\\\\s");
    (regexp "\\\\\\\\\\\\\\\\S", "\\\\S");
    (regexp "\\\\\\\\\\\\\\\\w", "\\\\w");
    (regexp "\\\\\\\\\\\\\\\\W", "\\\\W");
    (regexp "\\\\\\\\\\\\\\\\b", "\\\\b");
    (regexp "\\\\\\\\\\\\\\\\\\$", "\\\\$");
    (regexp "\\\\\\\\\\\\\\\\#", "\\\\#");
    (regexp "\\\\\\\\\\\\\\\\\\*", "\\\\*");
    (regexp "\\\\\\\\\\\\\\\\\\+", "\\\\+");
    (regexp "\\\\\\\\\\\\\\\\%", "\\\\%");
    (regexp "\\\\\\\\\\\\\\\\\\^", "\\\\^");
    (regexp "\\\\\\\\\\\\\\\\$", "\\\\$");
    (regexp "\\\\\\\\\\\\\\\\(", "\\\\(");
    (regexp "\\\\\\\\\\\\\\\\)", "\\\\)");
    (regexp "\\\\\\\\\\\\\\\\-", "\\\\-");
    (regexp "\\\\\\\\\\\\\\\\,", "\\\\,");
    (regexp "\\\\\\\\\\\\\\\\\\?", "\\\\?");
    (regexp "\\\\\\\\\\\\\\\\{", "\\\\{");
    (regexp "\\\\\\\\\\\\\\\\}", "\\\\}");
    (regexp "\\\\\\\\\\\\\\\\\\\\\\\\/", "\\\\/");
    (regexp "\\\\\\\\\\\\\\\\/", "\\\\/");
    (regexp "\\\\\\\\\\\\\\\\&", "\\\\&");
    (regexp "\\\\\\\\\\\\\\\\\\[", "\\\\[");
    (regexp "\\\\\\\\\\\\\\\\\\]", "\\\\]");
    (regexp "\\\\\\\\\\\\\\\\@", "\\\\@");
    (regexp "\\\\\\\\\\\\\\\\|", "\\\\|");
    (regexp "\\\\\\\\\\\\\\\\~", "\\\\~");
    (regexp "\\\\\\\\\\\\\\\\\\.", "\\\\.");
  ]

let replaceSS ss =
  let reg0 = fold_left onestep_pro ss prearray in
  let reg1 = regexp "\\\\\\\\" in
  let s = Str.global_replace reg1 "\\\\" reg0 in
  let s1 =
    if get s 0 = 's' && get s 1 = '/' then String.sub s 2 (String.length s - 2)
    else s
  in
  let n = String.length s1 - 2 in
  let s2 =
    if n > 1 && get s1 n = 'g' && get s1 (n - 1) = '/' then
      String.sub s1 0 (String.length s1 - 3)
    else s1
  in
  let n = String.length s2 - 1 in
  let s3 =
    if n >= 1 && get s1 n = 'g' && get s1 (n - 1) = '/' then
      String.sub s2 0 (String.length s2 - 2)
    else s2
  in
  s3

(*executeStdout (extract1 "{\"patterns\": [\"^([0][1-9]|[1][0-2]):[0-5][0-9] {1}(AM|PM|am|pm)$\"], \"type\":") ;; *)

let genJSmatch s =
  "\nfunction fun(str) {\n   var regex = /" ^ s
  ^ "/;\n\
    \   var match = str.match(regex);\n\
    \   if (match) {\n\
    \      if(match[1]!=null) {\n\
     \t if(/[a-z]+/.test(match[1])) \n\
     \t    console.log(\"1\");\n\
     \t else\n\
     \t    console.log(\"2\");\n\
    \      \t }\n\
    \      else\n\
    \           console.log(\"3\");\n\
    \   }\n\
    \   else\n\
    \     console.log(\"4\");\n\
     }\n\n\
     var S$ = require(\"S$\");\n\
     var str = S$.symbol(\"str\", \"\");\n\
     //var str = J$.readString();\n\
     fun(str);\n"

let genSMTmatch s =
  "\n\
   (set-option :produce-models true)\n\
   (set-option :inline-size-limit 10000)\n\n\
   (declare-const var0 String)\n\n\
   (push 1)\n\
   (assert (str.in.re var0 (re.* (re.range \"\\x01\" \"\\xff\"))))\n\
   (assert (str.in.re var0 " ^ s
  ^ "))\t; match!==null\n(assert (not (str.in.re ((_ str.extract 1) var0 " ^ s
  ^ ") (str.to.re \"\\x00\"))))\n\
     ;match[1]!==null\n\
     (assert (str.in.re ((_ str.extract 1) var0 " ^ s
  ^ ") (re.++ re.all(re.+ (re.range \"a\" \"z\")) re.all) ))\n\
     ;/[a-z]+/.test(match[1]) == true\n\
     (check-sat)\n\
     (get-model)\n\
     (pop 1)\n\
     (push 1)\n\
     (assert (str.in.re var0 (re.* (re.range \"\\x01\" \"\\xff\"))))\n\
     (assert (str.in.re var0 " ^ s
  ^ "))\t; match!==null\n(assert (not (str.in.re ((_ str.extract 1) var0 " ^ s
  ^ ") (str.to.re \"\\x00\"))))\t\n\
     ;match[1]!==null\n\
     (assert (not (str.in.re ((_ str.extract 1) var0 " ^ s
  ^ ") (re.++ re.all(re.+ (re.range \"a\" \"z\")) re.all) )))\n\
     ;/[a-z]+/.test(match[1]) == false\t\n\
     (check-sat)\n\
     (get-model)\n\
     (pop 1)\n\
     (push 1)\n\
     (assert (str.in.re var0 (re.* (re.range \"\\x01\" \"\\xff\"))))\n\
     (assert (str.in.re var0 " ^ s
  ^ "))\t; match!==null\n(assert (str.in.re ((_ str.extract 1) var0 " ^ s
  ^ ") (str.to.re \"\\x00\")))\n\
     ;match[1]==null\n\
     (check-sat)\n\
     (get-model)\n\
     (pop 1)\n\
     (push 1)\n\
     (assert (str.in.re var0 (re.* (re.range \"\\x01\" \"\\xff\"))))\n\
     (assert (not (str.in.re var0 " ^ s
  ^ ")))\t; match == null\n(check-sat)\n(get-model)\n(pop 1)\n(exit)\n"

let genJSreplace s =
  "\nfunction fun(str) {\n   if(/" ^ s
  ^ "/.test(str)) {\n      var repl = str.replace(/" ^ s
  ^ "/g, \"$1\");\n\
    \      if(/[a-z]+/.test(repl)) \n\
    \        console.log(\"1\");\n\
    \      else\n\
    \        console.log(\"2\");\n\
    \   }\n\
    \   else\n\
    \       console.log(\"3\");\n\
     }\n\n\
     var S$ = require(\"S$\");\n\
     var str = S$.symbol(\"str\", \"\");\n\
     //var str = J$.readString();\n\
     fun(str);\n"

let len_template ss s =
  ";;" ^ ss ^ "\n"
  (* "
     (set-option :produce-models true)
     (set-option :inline-size-limit 10000)

     (declare-const var0 String)
     (declare-const res String)

     (assert (str.in.re var0 (re.* (re.range \"\\x01\" \"\\xff\"))))

     (assert (str.in.re var0 " ^ s ^ "))

     (assert (= res ((_ str.extract 1) var0 " ^ s ^ ")))

     (hu add something)

     (check-sat)
     (get-model)
     "
  *)
  ^ "\n\
     (set-option :produce-models true)\n\
     (set-option :inline-size-limit 10000)\n\n\
     (declare-const var0 String)\n\n\
     (assert (str.in.re var0 (re.* (re.range \"\\x01\" \"\\xff\"))))\n\n\
     (assert (str.in.re var0 "
  ^ s ^ "))\n\n(assert (> (str.len var0) 10))\n\n(check-sat)\n(get-model)\n"

let genSMTreplace s s1 =
  "\n\
   (set-option :produce-models true)\n\
   (set-option :inline-size-limit 10000)\n\n\
   (declare-const var0 String)\n\
   (push 1)\n\
   (assert (str.in.re var0 (re.* (re.range \"\\x01\" \"\\xff\"))))\n\
   (assert (str.in.re var0 " ^ s
  ^ "))\n\
     ; /a*(a*)/.test(var0) == true\n\
     (assert (str.in.re \n\
     (str.replace_cg_all var0 (" ^ s
  ^ ")  (re.++ (_ re.reference 1))) \n\
     (re.++ (re.*? (re.range \"\\x01\" \"\\xff\")) (re.+ (re.range \"a\" \
     \"z\")) (re.* (re.range \"\\x01\" \"\\xff\")))))\n\
     ; [a-z]+/.test(repl) == true\n\
     (check-sat)\n\
     (get-model)\n\
     (pop 1)\n\
     (push 1)\n\
     (assert (str.in.re var0 (re.* (re.range \"\\x01\" \"\\xff\"))))\n\
     (assert (str.in.re var0 " ^ s
  ^ "))\n\
     ; /a*(a*)/.test(var0) == true\n\
     (assert (not (str.in.re \n\
     (str.replace_cg_all var0 (" ^ s
  ^ ")  (re.++ (_ re.reference 1))) \n\
     (re.++ (re.*? (re.range \"\\x01\" \"\\xff\")) (re.+ (re.range \"a\" \
     \"z\")) (re.* (re.range \"\\x01\" \"\\xff\"))))))\n\
     ; [a-z]+/.test(repl) == false\n\
     (check-sat)\n\
     (get-model)\n\
     (pop 1)\n\
     (push 1)\n\
     (assert (str.in.re var0 (re.* (re.range \"\\x01\" \"\\xff\"))))\n\
     (assert (not (str.in.re var0 " ^ s
  ^ ")))\n\
     ; /a*(a*)/.test(var0) == false\n\
     (check-sat)\n\
     (get-model)\n\
     (pop 1)\n\
     (exit)\n"

let outputSingleofTestT line f n exf =
  try
    let t = replaceSS (exf line) in
    let t1 = t in
    let lexbuf = Lexing.from_string (t ^ "\n") in
    let at = Regex.regex Regexlex.lexer lexbuf in
    if checkC at = true && checkT at = true then (
      let tt1 = fst (trantoPT 1 (processAnchors at)) in
      let oc1 = open_out (f ^ "test-" ^ string_of_int n ^ ".js") in
      let oc2 = open_out (f ^ "test-" ^ string_of_int n ^ ".smt2") in
      output_string oc2 (genSMTmatch tt1);
      output_string oc1 (genJSmatch t1);
      close_out oc1;
      close_out oc2)
  with _ -> print_string (line ^ ":error\n")

let outputSingleofTestTlen line f n exf =
  try
    let t = line in
    let lexbuf = Lexing.from_string (t ^ "\n") in
    let at = Regex.regex Regexlex.lexer lexbuf in
    if true (*(checkC at = true)  && (checkT at = true)*) then (
      let tt1 = fst (trantoPT 1 (processAnchors at)) in
      let oc1 = open_out (f ^ "test-" ^ string_of_int n ^ ".smt") in
      output_string oc1 (len_template t tt1);
      close_out oc1)
  with _ -> print_string (line ^ ":error\n")

let rec process_a_lineT n ic f k exf =
  let line = input_line ic in
  print_string ("xxx-" ^ line);
  print_int n;
  print_newline ();
  if line = "end" then (
    print_newline ();
    close_in ic)
  else (
    outputSingleofTestT line f n exf;
    print_string "\n";
    process_a_lineT (n + 1) ic f k exf)

let rec process_a_lineTlen n ic f k exf =
  let line = input_line ic in
  print_string ("xxx-" ^ line);
  print_int n;
  print_newline ();
  if line = "end" then (
    print_newline ();
    close_in ic)
  else (
    outputSingleofTestTlen line f n exf;
    print_string "\n";
    process_a_lineTlen (n + 1) ic f k exf)

let genTfromF f exf =
  try
    let ic = open_in f in
    process_a_lineT 1 ic f 1 exf;
    print_string "----translation done----\n"
  with e -> raise e

let genTfromFlen f exf =
  try
    let ic = open_in f in
    process_a_lineTlen 1 ic f 1 exf;
    print_string "----translation done----\n"
  with e -> raise e

(**********************)

let outputSingleofTestT1 line f n exf =
  try
    let t = replaceSS (exf line) in
    let t1 = t in
    let lexbuf = Lexing.from_string (t ^ "\n") in
    let at = Regex.regex Regexlex.lexer lexbuf in
    if checkC at = true && checkT at = true then (
      let at = processAnchors at in
      let tt1 = fst (trantoPT 1 at) in
      let tt2 = fst (trantoPT 1 at) in
      let oc1 = open_out (f ^ "test-" ^ string_of_int n ^ ".js") in
      let oc2 = open_out (f ^ "test-" ^ string_of_int n ^ ".smt2") in
      output_string oc2 (genSMTreplace tt2 tt1);
      output_string oc1 (genJSreplace t1);
      close_out oc1;
      close_out oc2)
  with _ -> print_string (line ^ ":error\n")

let rec process_a_lineT1 n ic f k exf =
  let line = input_line ic in
  print_string ("xxx-" ^ line);
  print_int n;
  print_newline ();
  if line = "end" then (
    print_newline ();
    close_in ic)
  else (
    outputSingleofTestT1 line f n exf;
    print_string "\n";
    process_a_lineT1 (n + 1) ic f k exf)

let genTfromF1 f exf =
  try
    let ic = open_in f in
    process_a_lineT1 1 ic f 1 exf;
    print_string "----translation done----\n"
  with e -> raise e
;;

(* genTfromF (Sys.argv.(1));; *)

(* let main () =
      (let lt = (Array.length Sys.argv) in
      if lt < 2 then (raise (ErrorArg "wrong arguments for the command reg2pt")) else
      (
          match (Sys.argv.(1)) with
             "-a" -> if lt > 2 then (genTfromF (Sys.argv.(2)) extract1)  else raise (ErrorArg "reg2pt needs more arguments")
           | "-b" -> if lt > 2 then (genTfromF (Sys.argv.(2)) extract2) else raise (ErrorArg "reg2pt needs more arguments")
           | "-ma" -> if lt > 2 then (genTfromF (Sys.argv.(2)) extract1)  else raise (ErrorArg "reg2pt needs more arguments")
           | "-mb" -> if lt > 2 then (genTfromF (Sys.argv.(2)) extract2) else raise (ErrorArg "reg2pt needs more arguments")
           | "-ra" -> if lt > 2 then (genTfromF1 (Sys.argv.(2)) extract1)  else raise (ErrorArg "reg2pt needs more arguments")
           | "-rb" -> if lt > 2 then (genTfromF1 (Sys.argv.(2)) extract2) else raise (ErrorArg "reg2pt needs more arguments")
           | "-d" -> if lt > 2 then (genTfromFlen (Sys.argv.(2)) extract2) else raise (ErrorArg "reg2pt needs more arguments")
           | _ ->    raise (ErrorArg "reg2pt only accepts -a and -b")
      )); print_string "\n" ;; *)

main ()
