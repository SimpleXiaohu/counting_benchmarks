open Printf
open Regast
open String
open List
open Char
open Regexlex
open Regex
open Str
open Filename


let outputSingleof line =
  try
    let lexbuf = Lexing.from_string (line ^ "\n") in
    let at = Regex.regex Regexlex.lexer lexbuf in
    print_string (fst (trantoPT 1 at))
  with 
  | excep -> print_string (line ^ " :error: " ^ (Printexc.to_string excep) ^ "\n")

let genCountSMT s lenbound =
  "(declare-const X String)\n\
  (assert (str.in_re X " ^ s ^ "))\n\
  (assert (< "^lenbound^" (str.len X)))\n\
  (check-sat)\n\
  (get-model)"

let genCountSMTWithInter s lenbound =
  "(declare-const X String)\n\
    (assert (str.in_re X " ^ s ^ "))\n\
    ; sanitize danger characters:  < > \' \" &\n\
    (assert (not (str.in_re X (re.++ re.all (re.union (str.to_re \"\\u{3c}\") (str.to_re \"\\u{3e}\") (str.to_re \"\\u{27}\") (str.to_re \"\\u{22}\") (str.to_re \"\\u{26}\")) re.all))))\n\
    (assert (< "^lenbound^" (str.len X)))\n\
    (check-sat)\n\
    (get-model)"

(* cli arguments *)
let usage_msg =
  "transform regexes in file: ./reg2smt <file1> -o <output subdir> -large\n\n\
   transform regexes in stdin: ./reg2smt -s <regex>\n"

let inputfile = ref ""
let outdir = ref "test"
let inter = ref true
let singleReg = ref ""

let lenbound = ref "0"

let speclist =
  [
    ( "-o",
      Arg.Set_string outdir,
      "The subdirectory used to store the output files" );
    ("-inter", Arg.Set inter, "Extact intersection regexes");
    ("-lenbound", Arg.Set_string lenbound, "The length bound of the string");
    ("-s", Arg.Set_string singleReg, "Transform a single regex");
  ]

let anon_fun filename = inputfile := filename
let () = Arg.parse speclist anon_fun usage_msg

(* make output subdirectory *)
let rec mkdir_rec path =
  match Sys.file_exists path with
  | true -> ()
  | false ->
    let parent = Filename.dirname path in
    mkdir_rec parent;
    Sys.mkdir path 0o777;;

mkdir_rec !outdir 

(* generate smt2 benchmarks *)
let genSMT s lenbound = if !inter then genCountSMTWithInter s lenbound  else genCountSMT s lenbound

let outputSingleofTest line n =
  try
    let lexbuf = Lexing.from_string (line ^ "\n") in
    let at = Regex.regex Regexlex.lexer lexbuf in
    let outf =
      open_out (concat !outdir "instance" ^ string_of_int n ^ ".smt2")
    in
    output_string outf (";test regex " ^ line ^ "\n");
    output_string outf (genSMT (fst (trantoPT 1 at)) !lenbound);
    close_out outf
  with 
  | excep -> print_string (line ^ " :error: " ^ (Printexc.to_string excep) ^ "\n")

let cnnt = ref 0

let rec allspace n s =
  if n < String.length s then
    if s.[n] <> ' ' && s.[n] <> '\t' && s.[n] <> '\n' then false
    else allspace (n + 1) s
  else true

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
  with | End_of_file ->  print_string "----translation done----\n"
       | e -> raise e


let executeStdout s = outputSingleof s

let main () =
  if singleReg = ref "" then executeRegex !inputfile
  else executeStdout !singleReg
;;
(* main() *)

main ()
