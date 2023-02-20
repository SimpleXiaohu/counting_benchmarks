
{
    open Regex ;;
    open Char ;;
    open String ;;    
    exception Eof;;

let rec xtou s = "\\u{"^(String.sub s 2 ((String.length s) - 2)) ^ "}"
 ;;

let rec otox s = Printf.sprintf "\\u{%04x}" (int_of_string ("0o"^(String.sub s 1 (String.length s - 1)))) ;;

let rec getcode s = (let ss = (String.get s 1) in let c = (code ss) in
                   Printf.sprintf "\\u{%04x}" c) ;;

let lowercase_asciiT = function
  | 'A' .. 'Z' as c -> unsafe_chr(code c + 32)
  | c -> c

let lowercase_ascii s = map lowercase_asciiT s

exception Lexerror of string ;;

let cutU s = s
(*    if (String.length s == 8) && (get s 3) = '0' && (get s 4) = '0' then ("\\u{" ^ (String.sub s 5 3))
    else if (String.length s == 7) && (get s 3) = '0'  then ("\\u{" ^ (String.sub s 4 3))
    else if (String.length s < 7) then s
    else (raise (Lexerror "unicode exceed \\uff"))
*)
}

rule lexer = parse
       ['\t']			    {lexer lexbuf}
    |  " "		   	    {Latom " "}
    |  "["                          {Llalt}
    |  "]"                          {Lralt}
    |  "|"                          {Lalt}
    |  "*?"                         {Llstar}
    |  "+?"                         {Llplus}
    |  "}?"                         {Loptloop}
    |  "*"                          {Lstar}
    |  "("                          {Llparen}
    |  ")"                          {Lrparen}
    |  "$"			    {Ldoller}
    |  "\\$"			    {Latom "$"}
    |  "\\&"			    {Latom "&"}
    |  "\\#"			    {Latom "#"}
    |  "!"			    {Lexc}
    |  "="			    {Lequal}
    |  "."                          {Ldot}
    |  "/"                          {Latom "/"}
    |  ","			    {Lcomma}
    |  "\\."                          {Latom "."}
    |  "\\<"                          {Latom "<"}
    |  "\\>"                          {Latom ">"}
    |  "\\;"                          {Latom ";"}
    |  "\\?"                          {Latom "?"}
    |  "\n"                          {LEOF}
    |  "{"			     {LlParen}
    |  "}"			     {LrParen}
    |  "\\{"			     {Latom "{"}
    |  "\\}"			     {Latom "}"}
    |  "-"			     {Lrange}
    |  "+"			     {Lplus}
    |  "\\w"                         {Lword}
    |  "\\W"                         {Lnword}
    |  "\\v"                         {Latom "\\u{0B}"}
    |  "\\V"                         {Latom "\\V"; raise (Lexerror "\\V")}
    |  "\\s"			     {Lspace}
    |  "\\S"			     {Lnonspace}
    |  "??"			     {Lloption}
    |  "?"                           {Loption}
    |  "\\@"                         {Latom "@"}
    | "\\-"                          {Latom (let s = (Lexing.lexeme lexbuf) in String.sub s  1 (String.length s - 1))}
    |  "\\n"			     {Latom "\\u{0a}"}
    |  "\\t"			     {Latom "\\u{09}"}
    |  "\\f"			     {Latom "\\u{0c}"}
    |  "\\r"			     {Latom "\\u{0d}"}
    |  "\\="			     {Latom "="}
    |  "\\+"			     {Latom "+"}
    |  "\\d"			     {Ldigit}
    |  "\\D"			     {Lndigit}
    |  "\\b"			     {Latom "\\b"; raise (Lexerror "\\b")}
    |  "\\B"			     {Latom "\\B"; raise (Lexerror "\\B")}
    |  "\\/"                         {Latom "/"}
    |  "\\("                         {Latom "("}
    |  "\\["                         {Latom "["}
    |  "\\]"                         {Latom "]"}
    |  "\\*"                         {Latom "*"}
    |  "\\)"                         {Latom ")"}
    |  ":"                           {Lcolon}
    |  "\\x" ['0'-'9' 'a'-'f' 'A'-'F']+     {Latom (cutU (lowercase_ascii (xtou (Lexing.lexeme lexbuf))))}
    |  "\\u" ['0'-'9' 'a'-'f' 'A'-'F']+     {Latom (cutU (lowercase_ascii (xtou (Lexing.lexeme lexbuf))))}
    |  "\\" "0" ['0'-'9']+                  {Latom (cutU (lowercase_ascii (otox (Lexing.lexeme lexbuf))))}
    |  "\\" ['0'-'9']+                {Lbackref (Lexing.lexeme lexbuf)}
    |  "^"                            {Lcaret}
    |  "\\^"                           {Latom "^"}
    |  "\\|"                           {Latom "|"}
    |  "\'"                           {Latom "\\u{27}"}
    |  "\\\'"                                   {Latom "\\u{27}"}
    |  "\\\""                         	        {Latom "\\u{22}"}
    |  "\""                         	        {Latom "\\u{22}"}
    |  ['a'-'z' 'A'-'Z' '0'-'9']		{Latom (Lexing.lexeme lexbuf)}
    |  ['0'-'9']+                   {Latom (Lexing.lexeme lexbuf)}
    |  "\\" ['a'-'z' 'A'-'Z' '0'-'9']		{Latom (let s = (Lexing.lexeme lexbuf) in String.sub s  1 (String.length s - 1))}
    |  [' '-'/' ':'-'@' '['-'`' '{' - '~']      {Latom (Lexing.lexeme lexbuf)}
    |  ['\x80'-'\xff'] ['\x80'-'\xff'] ['\x80'-'\xff'] {Latom (Lexing.lexeme lexbuf)}
    |  ['\x80'-'\xff'] ['\x80'-'\xff'] {Latom (Lexing.lexeme lexbuf)}
    |  "\\\\" 			    {print_string "dash"; Latom "\\\\"}
    |  "\\" [' '-'/' ':'-'@' '['-'`' '{' - '~']     {Latom (let s = (Lexing.lexeme lexbuf) in String.sub s  1 (String.length s - 1))}



    
    

























