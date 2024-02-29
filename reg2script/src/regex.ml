type token =
  | Latom of (string)
  | Ldot
  | Lstar
  | Llstar
  | Llplus
  | Lplus
  | Llalt
  | Lralt
  | Lalt
  | Llparen
  | Lrparen
  | Lnoncapture
  | Lrange
  | LEOF
  | Lword
  | Lnword
  | Lspace
  | Lnonspace
  | Loption
  | Lloption
  | Lcaret
  | Ldigit
  | Lndigit
  | Ldoller
  | Lexc
  | Lequal
  | Lcolon
  | LlParen
  | LrParen
  | Loptloop
  | Lcomma
  | Lbackref of (string )

open Parsing;;
let _ = parse_error;;
# 2 "regex.mly"

open Regast ;;
open String ;;
open Char ;;


let rec regexesAlt rl = match rl
    with [] -> raise (ParseASTError "Altnation operation with bad arguments")
  |  [reg] -> reg
  |  reg :: rrl -> Alt (reg, (regexesAlt rrl)) ;;

let rec negranges l = match l with
    [] -> []
  | (Atom s) :: rl -> (Sneg s)::(negranges rl)
  | Alt ((Atom s), r) :: rl -> (Sneg s)::(negranges (r :: rl))
  | _ -> raise (ParseASTError "Altnation operation with bad arguments")
 ;; 

let rec constructand l = match l with
     [] -> raise (ParseASTError "Altnation operation with bad arguments")
   | [s] -> s
   | [s1;s2] -> Sand (s1,s2)
   | s1 :: rl -> Sand (s1, (constructand rl)) 
    ;;


let processRange l = match l with
    [] -> raise (ParseASTError "Altnation operation with bad arguments")
  | [reg] -> reg
  | (Atom (Slit "^")) :: rrl -> Atom (constructand (negranges rrl)) 
  | _ -> regexesAlt l
  ;;

let rec gen_concats_simp n l =
    (if n = 0 then (Atom EmptyW)
    else if n = 1 then l
    else (Concat (l, (gen_concats_simp (n-1) l)))) ;;

let rec gen_concats n m l =
    (if n = m then (gen_concats_simp n l)
     else if n < m then (Alt ((gen_concats (n+1) m l), (gen_concats_simp n l)))
     else raise (ParseASTError "selection operation with bad arguments")
    );;

exception Unsupport of string ;;

(*   | Llalt Lcaret ranges Lralt 	   	{Atom (constructand (negranges $3))} *)

# 87 "regex.ml"
let yytransl_const = [|
  258 (* Ldot *);
  259 (* Lstar *);
  260 (* Llstar *);
  261 (* Llplus *);
  262 (* Lplus *);
  263 (* Llalt *);
  264 (* Lralt *);
  265 (* Lalt *);
  266 (* Llparen *);
  267 (* Lrparen *);
  268 (* Lnoncapture *);
  269 (* Lrange *);
  270 (* LEOF *);
  271 (* Lword *);
  272 (* Lnword *);
  273 (* Lspace *);
  274 (* Lnonspace *);
  275 (* Loption *);
  276 (* Lloption *);
  277 (* Lcaret *);
  278 (* Ldigit *);
  279 (* Lndigit *);
  280 (* Ldoller *);
  281 (* Lexc *);
  282 (* Lequal *);
  283 (* Lcolon *);
  284 (* LlParen *);
  285 (* LrParen *);
  286 (* Loptloop *);
  287 (* Lcomma *);
    0|]

let yytransl_block = [|
  257 (* Latom *);
  288 (* Lbackref *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\006\000\
\006\000\006\000\004\000\004\000\000\000"

let yylen = "\002\000\
\002\000\001\000\003\000\003\000\004\000\004\000\006\000\006\000\
\002\000\002\000\002\000\003\000\005\000\002\000\002\000\002\000\
\002\000\006\000\006\000\005\000\004\000\005\000\005\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\003\000\
\002\000\001\000\001\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\026\000\035\000\000\000\000\000\028\000\029\000\
\030\000\031\000\032\000\024\000\033\000\034\000\025\000\036\000\
\037\000\038\000\040\000\041\000\039\000\027\000\069\000\000\000\
\002\000\000\000\051\000\056\000\059\000\058\000\060\000\061\000\
\044\000\045\000\046\000\047\000\048\000\057\000\062\000\049\000\
\050\000\063\000\052\000\053\000\054\000\055\000\043\000\000\000\
\066\000\000\000\000\000\000\000\000\000\009\000\010\000\017\000\
\016\000\000\000\001\000\014\000\015\000\000\000\000\000\000\000\
\003\000\068\000\000\000\000\000\000\000\000\000\000\000\012\000\
\000\000\000\000\064\000\006\000\000\000\000\000\000\000\000\000\
\005\000\021\000\000\000\022\000\023\000\000\000\000\000\013\000\
\000\000\020\000\008\000\007\000\018\000\019\000"

let yydgoto = "\002\000\
\023\000\063\000\025\000\048\000\049\000\050\000"

let yysindex = "\003\000\
\004\001\000\000\000\000\000\000\078\000\105\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\255\
\000\000\025\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\027\255\
\000\000\078\000\004\001\232\254\078\255\000\000\000\000\000\000\
\000\000\004\001\000\000\000\000\000\000\038\255\046\000\042\255\
\000\000\000\000\110\255\004\001\004\001\164\000\196\000\000\000\
\014\000\022\255\000\000\000\000\142\255\174\255\004\001\206\255\
\000\000\000\000\012\255\000\000\000\000\238\255\228\000\000\000\
\243\254\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\137\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\039\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\035\001\031\255\066\001\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\035\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\255\255\000\000\254\255\000\000\000\000"

let yytablesize = 610
let yytable = "\024\000\
\068\000\069\000\070\000\001\000\053\000\003\000\004\000\054\000\
\055\000\056\000\057\000\005\000\089\000\058\000\006\000\093\000\
\094\000\007\000\059\000\008\000\009\000\010\000\011\000\060\000\
\061\000\012\000\013\000\014\000\015\000\016\000\017\000\018\000\
\062\000\020\000\065\000\021\000\022\000\064\000\074\000\011\000\
\090\000\011\000\075\000\004\000\011\000\004\000\067\000\066\000\
\004\000\067\000\082\000\011\000\083\000\000\000\011\000\000\000\
\073\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\077\000\078\000\080\000\073\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\086\000\003\000\004\000\
\054\000\055\000\056\000\057\000\005\000\073\000\071\000\006\000\
\072\000\000\000\007\000\000\000\008\000\009\000\010\000\011\000\
\060\000\061\000\012\000\013\000\014\000\015\000\016\000\017\000\
\018\000\062\000\020\000\000\000\021\000\022\000\003\000\004\000\
\054\000\055\000\056\000\057\000\005\000\000\000\058\000\006\000\
\076\000\000\000\007\000\000\000\008\000\009\000\010\000\011\000\
\060\000\061\000\012\000\013\000\014\000\015\000\016\000\017\000\
\018\000\062\000\020\000\000\000\021\000\022\000\003\000\004\000\
\054\000\055\000\056\000\057\000\005\000\000\000\058\000\006\000\
\084\000\000\000\007\000\000\000\008\000\009\000\010\000\011\000\
\060\000\061\000\012\000\013\000\014\000\015\000\016\000\017\000\
\018\000\062\000\020\000\000\000\021\000\022\000\003\000\004\000\
\054\000\055\000\056\000\057\000\005\000\000\000\058\000\006\000\
\085\000\000\000\007\000\000\000\008\000\009\000\010\000\011\000\
\060\000\061\000\012\000\013\000\014\000\015\000\016\000\017\000\
\018\000\062\000\020\000\000\000\021\000\022\000\003\000\004\000\
\054\000\055\000\056\000\057\000\005\000\000\000\087\000\006\000\
\088\000\000\000\007\000\000\000\008\000\009\000\010\000\011\000\
\060\000\061\000\012\000\013\000\014\000\015\000\016\000\017\000\
\018\000\062\000\020\000\000\000\021\000\022\000\003\000\004\000\
\054\000\055\000\056\000\057\000\005\000\000\000\058\000\006\000\
\091\000\000\000\007\000\000\000\008\000\009\000\010\000\011\000\
\060\000\061\000\012\000\013\000\014\000\015\000\016\000\017\000\
\018\000\062\000\020\000\000\000\021\000\022\000\003\000\004\000\
\054\000\055\000\056\000\057\000\005\000\000\000\000\000\006\000\
\000\000\000\000\007\000\000\000\008\000\009\000\010\000\011\000\
\060\000\061\000\012\000\013\000\014\000\015\000\016\000\017\000\
\018\000\062\000\020\000\000\000\021\000\022\000\003\000\004\000\
\054\000\055\000\056\000\057\000\005\000\000\000\000\000\006\000\
\000\000\000\000\007\000\000\000\008\000\009\000\010\000\011\000\
\060\000\061\000\000\000\013\000\014\000\000\000\016\000\017\000\
\018\000\062\000\020\000\000\000\021\000\022\000\026\000\027\000\
\028\000\000\000\000\000\029\000\000\000\000\000\030\000\031\000\
\032\000\000\000\033\000\000\000\034\000\035\000\036\000\037\000\
\038\000\000\000\039\000\040\000\041\000\042\000\043\000\044\000\
\045\000\003\000\004\000\000\000\046\000\047\000\000\000\005\000\
\000\000\051\000\006\000\000\000\000\000\007\000\000\000\008\000\
\009\000\010\000\011\000\052\000\000\000\012\000\013\000\014\000\
\015\000\016\000\017\000\018\000\019\000\020\000\000\000\021\000\
\022\000\042\000\042\000\042\000\000\000\000\000\042\000\000\000\
\042\000\042\000\042\000\042\000\000\000\000\000\000\000\042\000\
\042\000\042\000\042\000\042\000\000\000\042\000\042\000\042\000\
\042\000\042\000\042\000\042\000\003\000\004\000\000\000\042\000\
\042\000\000\000\005\000\000\000\079\000\006\000\000\000\000\000\
\007\000\000\000\008\000\009\000\010\000\011\000\000\000\000\000\
\012\000\013\000\014\000\015\000\016\000\017\000\018\000\019\000\
\020\000\000\000\021\000\022\000\003\000\004\000\000\000\000\000\
\000\000\000\000\005\000\000\000\000\000\006\000\081\000\000\000\
\007\000\000\000\008\000\009\000\010\000\011\000\000\000\000\000\
\012\000\013\000\014\000\015\000\016\000\017\000\018\000\019\000\
\020\000\000\000\021\000\022\000\003\000\004\000\000\000\000\000\
\000\000\000\000\005\000\000\000\000\000\006\000\092\000\000\000\
\007\000\000\000\008\000\009\000\010\000\011\000\000\000\000\000\
\012\000\013\000\014\000\015\000\016\000\017\000\018\000\019\000\
\020\000\000\000\021\000\022\000\003\000\004\000\000\000\000\000\
\000\000\000\000\005\000\000\000\000\000\006\000\000\000\000\000\
\007\000\000\000\008\000\009\000\010\000\011\000\000\000\000\000\
\012\000\013\000\014\000\015\000\016\000\017\000\018\000\019\000\
\020\000\000\000\021\000\022\000\040\000\040\000\040\000\040\000\
\040\000\040\000\000\000\040\000\040\000\040\000\000\000\040\000\
\040\000\040\000\040\000\040\000\040\000\040\000\040\000\040\000\
\040\000\040\000\040\000\040\000\040\000\040\000\040\000\040\000\
\000\000\040\000\040\000\065\000\065\000\000\000\000\000\065\000\
\000\000\065\000\065\000\065\000\065\000\000\000\065\000\000\000\
\065\000\065\000\065\000\065\000\065\000\000\000\065\000\065\000\
\065\000\065\000\065\000\065\000\065\000\000\000\000\000\000\000\
\065\000\065\000"

let yycheck = "\001\000\
\025\001\026\001\027\001\001\000\006\000\001\001\002\001\003\001\
\004\001\005\001\006\001\007\001\001\001\009\001\010\001\029\001\
\030\001\013\001\014\001\015\001\016\001\017\001\018\001\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\027\001\
\028\001\029\001\008\001\031\001\032\001\013\001\001\001\009\001\
\029\001\011\001\001\001\009\001\014\001\011\001\008\001\050\000\
\014\001\051\000\029\001\021\001\031\001\255\255\024\001\255\255\
\058\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\068\000\069\000\070\000\071\000\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\079\000\001\001\002\001\
\003\001\004\001\005\001\006\001\007\001\087\000\009\001\010\001\
\011\001\255\255\013\001\255\255\015\001\016\001\017\001\018\001\
\019\001\020\001\021\001\022\001\023\001\024\001\025\001\026\001\
\027\001\028\001\029\001\255\255\031\001\032\001\001\001\002\001\
\003\001\004\001\005\001\006\001\007\001\255\255\009\001\010\001\
\011\001\255\255\013\001\255\255\015\001\016\001\017\001\018\001\
\019\001\020\001\021\001\022\001\023\001\024\001\025\001\026\001\
\027\001\028\001\029\001\255\255\031\001\032\001\001\001\002\001\
\003\001\004\001\005\001\006\001\007\001\255\255\009\001\010\001\
\011\001\255\255\013\001\255\255\015\001\016\001\017\001\018\001\
\019\001\020\001\021\001\022\001\023\001\024\001\025\001\026\001\
\027\001\028\001\029\001\255\255\031\001\032\001\001\001\002\001\
\003\001\004\001\005\001\006\001\007\001\255\255\009\001\010\001\
\011\001\255\255\013\001\255\255\015\001\016\001\017\001\018\001\
\019\001\020\001\021\001\022\001\023\001\024\001\025\001\026\001\
\027\001\028\001\029\001\255\255\031\001\032\001\001\001\002\001\
\003\001\004\001\005\001\006\001\007\001\255\255\009\001\010\001\
\011\001\255\255\013\001\255\255\015\001\016\001\017\001\018\001\
\019\001\020\001\021\001\022\001\023\001\024\001\025\001\026\001\
\027\001\028\001\029\001\255\255\031\001\032\001\001\001\002\001\
\003\001\004\001\005\001\006\001\007\001\255\255\009\001\010\001\
\011\001\255\255\013\001\255\255\015\001\016\001\017\001\018\001\
\019\001\020\001\021\001\022\001\023\001\024\001\025\001\026\001\
\027\001\028\001\029\001\255\255\031\001\032\001\001\001\002\001\
\003\001\004\001\005\001\006\001\007\001\255\255\255\255\010\001\
\255\255\255\255\013\001\255\255\015\001\016\001\017\001\018\001\
\019\001\020\001\021\001\022\001\023\001\024\001\025\001\026\001\
\027\001\028\001\029\001\255\255\031\001\032\001\001\001\002\001\
\003\001\004\001\005\001\006\001\007\001\255\255\255\255\010\001\
\255\255\255\255\013\001\255\255\015\001\016\001\017\001\018\001\
\019\001\020\001\255\255\022\001\023\001\255\255\025\001\026\001\
\027\001\028\001\029\001\255\255\031\001\032\001\001\001\002\001\
\003\001\255\255\255\255\006\001\255\255\255\255\009\001\010\001\
\011\001\255\255\013\001\255\255\015\001\016\001\017\001\018\001\
\019\001\255\255\021\001\022\001\023\001\024\001\025\001\026\001\
\027\001\001\001\002\001\255\255\031\001\032\001\255\255\007\001\
\255\255\009\001\010\001\255\255\255\255\013\001\255\255\015\001\
\016\001\017\001\018\001\019\001\255\255\021\001\022\001\023\001\
\024\001\025\001\026\001\027\001\028\001\029\001\255\255\031\001\
\032\001\001\001\002\001\003\001\255\255\255\255\006\001\255\255\
\008\001\009\001\010\001\011\001\255\255\255\255\255\255\015\001\
\016\001\017\001\018\001\019\001\255\255\021\001\022\001\023\001\
\024\001\025\001\026\001\027\001\001\001\002\001\255\255\031\001\
\032\001\255\255\007\001\255\255\009\001\010\001\255\255\255\255\
\013\001\255\255\015\001\016\001\017\001\018\001\255\255\255\255\
\021\001\022\001\023\001\024\001\025\001\026\001\027\001\028\001\
\029\001\255\255\031\001\032\001\001\001\002\001\255\255\255\255\
\255\255\255\255\007\001\255\255\255\255\010\001\011\001\255\255\
\013\001\255\255\015\001\016\001\017\001\018\001\255\255\255\255\
\021\001\022\001\023\001\024\001\025\001\026\001\027\001\028\001\
\029\001\255\255\031\001\032\001\001\001\002\001\255\255\255\255\
\255\255\255\255\007\001\255\255\255\255\010\001\011\001\255\255\
\013\001\255\255\015\001\016\001\017\001\018\001\255\255\255\255\
\021\001\022\001\023\001\024\001\025\001\026\001\027\001\028\001\
\029\001\255\255\031\001\032\001\001\001\002\001\255\255\255\255\
\255\255\255\255\007\001\255\255\255\255\010\001\255\255\255\255\
\013\001\255\255\015\001\016\001\017\001\018\001\255\255\255\255\
\021\001\022\001\023\001\024\001\025\001\026\001\027\001\028\001\
\029\001\255\255\031\001\032\001\002\001\003\001\004\001\005\001\
\006\001\007\001\255\255\009\001\010\001\011\001\255\255\013\001\
\014\001\015\001\016\001\017\001\018\001\019\001\020\001\021\001\
\022\001\023\001\024\001\025\001\026\001\027\001\028\001\029\001\
\255\255\031\001\032\001\002\001\003\001\255\255\255\255\006\001\
\255\255\008\001\009\001\010\001\011\001\255\255\013\001\255\255\
\015\001\016\001\017\001\018\001\019\001\255\255\021\001\022\001\
\023\001\024\001\025\001\026\001\027\001\255\255\255\255\255\255\
\031\001\032\001"

let yynames_const = "\
  Ldot\000\
  Lstar\000\
  Llstar\000\
  Llplus\000\
  Lplus\000\
  Llalt\000\
  Lralt\000\
  Lalt\000\
  Llparen\000\
  Lrparen\000\
  Lnoncapture\000\
  Lrange\000\
  LEOF\000\
  Lword\000\
  Lnword\000\
  Lspace\000\
  Lnonspace\000\
  Loption\000\
  Lloption\000\
  Lcaret\000\
  Ldigit\000\
  Lndigit\000\
  Ldoller\000\
  Lexc\000\
  Lequal\000\
  Lcolon\000\
  LlParen\000\
  LrParen\000\
  Loptloop\000\
  Lcomma\000\
  "

let yynames_block = "\
  Latom\000\
  Lbackref\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'regexi) in
    Obj.repr(
# 114 "regex.mly"
                            (_1)
# 400 "regex.ml"
               : Regast.regAST))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'symbol) in
    Obj.repr(
# 118 "regex.mly"
               (_1)
# 407 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'ranges) in
    Obj.repr(
# 119 "regex.mly"
                                    (processRange _2)
# 414 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'regexi) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'regexi) in
    Obj.repr(
# 120 "regex.mly"
                                    (Alt (_1,_3))
# 422 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'regexi) in
    Obj.repr(
# 121 "regex.mly"
                                 (Capture (Alt (Concat (Atom EmptyW, _2), Atom EmptyW)))
# 429 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'regexi) in
    Obj.repr(
# 122 "regex.mly"
                                 (Capture (Alt (Atom EmptyW, Concat (Atom EmptyW, _3))))
# 436 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'regexi) in
    Obj.repr(
# 123 "regex.mly"
                                                   (Alt (Concat (Atom EmptyW, _4), Atom EmptyW))
# 443 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'regexi) in
    Obj.repr(
# 124 "regex.mly"
                                                   (Alt (Concat (Atom EmptyW, _5), Atom EmptyW))
# 450 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'regexi) in
    Obj.repr(
# 125 "regex.mly"
                                        (Kstar _1)
# 457 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'regexi) in
    Obj.repr(
# 126 "regex.mly"
                                        (LKstar _1)
# 464 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'regexi) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'regexi) in
    Obj.repr(
# 127 "regex.mly"
                                        (Concat (_1,_2))
# 472 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'regexi) in
    Obj.repr(
# 128 "regex.mly"
                                        (Capture _2)
# 479 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'regexi) in
    Obj.repr(
# 129 "regex.mly"
                                                 (_4)
# 486 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'regexi) in
    Obj.repr(
# 130 "regex.mly"
                                        (Loption _1)
# 493 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'regexi) in
    Obj.repr(
# 131 "regex.mly"
                                                 (Lopt _1)
# 500 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'regexi) in
    Obj.repr(
# 132 "regex.mly"
                             (Kplus _1)
# 507 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'regexi) in
    Obj.repr(
# 133 "regex.mly"
                              (LKplus _1)
# 514 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : 'regexi) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 134 "regex.mly"
                                                 (Lloop (_1, (int_of_string _3), (int_of_string _5)))
# 523 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : 'regexi) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 136 "regex.mly"
       (Llloop (_1, (int_of_string _3), (int_of_string _5)))
# 532 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'regexi) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    Obj.repr(
# 138 "regex.mly"
                                          (Concat (Kstar _1, (Lloop (_1, (int_of_string _3), (int_of_string _3)))))
# 540 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'regexi) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 140 "regex.mly"
                                     (Lloop (_1, (int_of_string _3),(int_of_string _3)))
# 548 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'regexi) in
    Obj.repr(
# 142 "regex.mly"
                                              (print_string "lookbhind"; raise (ParseASTError "not support for lookbehind"))
# 555 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'regexi) in
    Obj.repr(
# 143 "regex.mly"
                                                (print_string "lookahead"; raise (ParseASTError "not support for lookahead"))
# 562 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    Obj.repr(
# 144 "regex.mly"
                               (Atom AnchStart)
# 568 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    Obj.repr(
# 145 "regex.mly"
                                (Atom AnchEnd)
# 574 "regex.ml"
               : 'regexi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 150 "regex.mly"
                                 (Atom (Slit _1))
# 581 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string ) in
    Obj.repr(
# 151 "regex.mly"
                 (LBR (String.sub _1 1 (String.length _1 -1)))
# 588 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 152 "regex.mly"
                (Atom (Slit "-"))
# 594 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 153 "regex.mly"
                                 (regexesAlt [Atom (Srange ("a", "z")) ;
                                              Atom (Srange ("A", "Z")) ;
                                              Atom (Srange ("0", "9"));
                                              Atom (Slit "_")])
# 603 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 157 "regex.mly"
                                 (Atom (constructand (negranges
                                             [Atom (Srange ("a", "z")) ;
                                              Atom (Srange ("A", "Z")) ;
                                              Atom (Srange ("0", "9"));
                                              Atom (Slit "_")])))
# 613 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 162 "regex.mly"
                (regexesAlt [Atom (Slit " ") ;
     				 	      Atom (Slit "\\u{0b}") ;
                                              Atom (Slit "\\u{0a}") ;
                                              Atom (Slit "\\u{0d}") ;
                                              Atom (Slit "\\u{09}") ;
                                              Atom (Slit "\\u{0c}") ;
                                              ])
# 625 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 169 "regex.mly"
                                 (Atom (Sand ((Sneg (Slit "\\u{20}")),
                                       (Sand ((Sneg (Slit "\\u{0a}")),
				       (Sand ((Sneg (Slit "\\u{0b}")),
                                       (Sand ((Sneg (Slit "\\u{0d}")),
				       (Sand ((Sneg (Slit "\\u{09}")),
                                       (Sneg (Slit "\\u{0c}")))))))))))))
# 636 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 176 "regex.mly"
               (Atom (Srange ("0", "9")))
# 642 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 177 "regex.mly"
                (Atom (Sneg (Srange ("0","9"))))
# 648 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 178 "regex.mly"
              (Atom Wild)
# 654 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 179 "regex.mly"
             (Atom (Slit "!"))
# 660 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 180 "regex.mly"
               (Atom (Slit "="))
# 666 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 181 "regex.mly"
               (Atom (Slit ":"))
# 672 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 182 "regex.mly"
               (Atom (Slit ","))
# 678 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 183 "regex.mly"
                 (Atom (Slit "{"))
# 684 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 184 "regex.mly"
                 (Atom (Slit "}"))
# 690 "regex.ml"
               : 'symbol))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 187 "regex.mly"
                                 (Atom (Slit _1))
# 697 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string ) in
    Obj.repr(
# 188 "regex.mly"
                 (LBR (String.sub _1 1 (String.length _1 -1)))
# 704 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 189 "regex.mly"
                (Atom (Slit "-"))
# 710 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 190 "regex.mly"
                                 (regexesAlt [Atom (Srange ("a", "z")) ;
                                              Atom (Srange ("A", "Z")) ;
                                              Atom (Srange ("0", "9"));
                                              Atom (Slit "_")])
# 719 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 194 "regex.mly"
                                 (Atom (constructand (negranges
                                             [Atom (Srange ("a", "z")) ;
                                              Atom (Srange ("A", "Z")) ;
                                              Atom (Srange ("0", "9"));
                                              Atom (Slit "_")])))
# 729 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 199 "regex.mly"
                (regexesAlt [Atom (Slit "\\u{20}") ;
     				 	      Atom (Slit "\\u{0b}") ;
                                              Atom (Slit "\\u{0a}") ;
                                              Atom (Slit "\\u{0d}") ;
                                              Atom (Slit "\\u{09}") ;
                                              Atom (Slit "\\u{0c}") ;
                                              ])
# 741 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 206 "regex.mly"
                                 (Atom (Sand ((Sneg (Slit "\\u{20}")),
                                       (Sand ((Sneg (Slit "\\u{0a}")),
				       (Sand ((Sneg (Slit "\\u{0b}")),
                                       (Sand ((Sneg (Slit "\\u{0d}")),
				       (Sand ((Sneg (Slit "\\u{09}")),
                                       (Sneg (Slit "\\u{0c}")))))))))))))
# 752 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 213 "regex.mly"
               (Atom (Srange ("0", "9")))
# 758 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 214 "regex.mly"
                (Atom (Sneg (Srange ("0","9"))))
# 764 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 215 "regex.mly"
              (Atom (Slit "."))
# 770 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 216 "regex.mly"
             (Atom (Slit "!"))
# 776 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 217 "regex.mly"
               (Atom (Slit "="))
# 782 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 218 "regex.mly"
               (Atom (Slit ":"))
# 788 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 219 "regex.mly"
               (Atom (Slit ","))
# 794 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 220 "regex.mly"
                 (Atom (Slit "*"))
# 800 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 221 "regex.mly"
                (Atom (Slit "?"))
# 806 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 222 "regex.mly"
             (Atom (Slit "|"))
# 812 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 223 "regex.mly"
              (Atom (Slit "+"))
# 818 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 224 "regex.mly"
                (Atom (Slit "("))
# 824 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 225 "regex.mly"
                (Atom (Slit ")"))
# 830 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 226 "regex.mly"
               (Atom (Slit "^"))
# 836 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    Obj.repr(
# 227 "regex.mly"
                (Atom (Slit "$"))
# 842 "regex.ml"
               : 'rsymbol))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 230 "regex.mly"
                         (Atom (Srange (_1,_3)))
# 850 "regex.ml"
               : 'range))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 231 "regex.mly"
                              (Alt (Atom (Slit _1), Atom (Slit "-")))
# 857 "regex.ml"
               : 'range))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'rsymbol) in
    Obj.repr(
# 232 "regex.mly"
                (_1)
# 864 "regex.ml"
               : 'range))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'range) in
    Obj.repr(
# 235 "regex.mly"
                ([_1])
# 871 "regex.ml"
               : 'ranges))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'range) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'ranges) in
    Obj.repr(
# 236 "regex.mly"
                                  (_1 :: _2)
# 879 "regex.ml"
               : 'ranges))
(* Entry regex *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let regex (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Regast.regAST)
