%{

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

%}


%token <string> Latom

%token Ldot
%token Lstar
%token Llstar
%token Llplus
%token Lplus
%token Llalt
%token Lralt
%token Lalt
%token Llparen
%token Lrparen
%token Lnoncapture
%token Lrange
%token LEOF
%token Lword
%token Lnword
%token Lspace
%token Lnonspace
%token Loption
%token Lloption
%token Lcaret
%token Ldigit
%token Lndigit
%token Ldoller
%token Lexc
%token Lequal
%token Lcolon
%token LlParen
%token LrParen
%token Loptloop
%token Lcomma
%token <string >Lbackref

%left Lalt
%left CONCAT
%nonassoc Lcomma
%nonassoc Lword Lnword
%nonassoc Lspace Lnonspace
%left Lstar Llstar Lplus Llplus Lbackref
%nonassoc Llparen
%nonassoc Loption Lloption
%nonassoc Llalt Lralt
%nonassoc Ldigit Lndigit
%nonassoc Ldot
%left Lexc
%left Lequal Lcolon
%left LlParen LrParen Loptloop
%nonassoc Latom
%left Lrange
%nonassoc Lcaret Ldoller




%start regex
%type <Regast.regAST> regex

%%

regex : regexi LEOF	        {$1}


regexi :
     symbol				{$1}
   | Llalt ranges Lralt            	{processRange $2}  
   | regexi Lalt regexi            	{Alt ($1,$3)}
   | Llparen Lrparen              {Capture (Atom EmptyW)}
   | Llparen regexi Lalt Lrparen	{Capture (Alt (Concat (Atom EmptyW, $2), Atom EmptyW))}
   | Llparen Lalt regexi Lrparen	{Capture (Alt (Atom EmptyW, Concat (Atom EmptyW, $3)))}
   | Llparen Loption Lcolon regexi Lalt Lrparen    {Alt (Concat (Atom EmptyW, $4), Atom EmptyW)}
   | Llparen Loption Lcolon Lalt regexi Lrparen	   {Alt (Concat (Atom EmptyW, $5), Atom EmptyW)}
   | regexi Lstar                       {Kstar $1}
   | regexi Llstar                      {LKstar $1}
   | regexi regexi %prec CONCAT         {Concat ($1,$2)}
   | Llparen regexi Lrparen             {Capture $2}
   | Llparen Loption Lcolon regexi Lrparen       {$4}
   | regexi Loption  	    	   	         {Loption $1}
   | regexi Lloption                             {Lopt $1}
   | regexi Lplus			         {Kplus $1}
   | regexi Llplus			         {LKplus $1}
   | regexi LlParen Latom Lcomma Latom LrParen   {Lloop ($1, (int_of_string $3), (int_of_string $5))}
   | regexi LlParen Latom LrParen   {Lloop ($1, (int_of_string $3), (int_of_string $3))}
   | regexi LlParen Latom Lcomma Latom Loptloop
						 {Llloop ($1, (int_of_string $3), (int_of_string $5))}                            
  //  | regexi LlParen Latom Lcomma LrParen	 {Lloop ($1, 0, (int_of_string $3))}
   | regexi LlParen Latom Lcomma LrParen	 {Concat (Kstar $1, (Lloop ($1, (int_of_string $3), (int_of_string $3))))}
  //  | regexi LlParen Latom Lcomma LrParen	 {Lloop ($1, (int_of_string $3), 10000)}
   | regexi LlParen Latom LrParen	 	 {Lloop ($1, (int_of_string $3),(int_of_string $3))}
  //  | regexi LlParen Latom LrParen	 	 {Lloop ($1, 0, (int_of_string $3))}
   | Llparen Loption Lexc regexi Lrparen    	 {print_string "lookbhind"; raise (ParseASTError "not support for lookbehind")}
   | Llparen Loption Lequal regexi Lrparen    	 {print_string "lookahead"; raise (ParseASTError "not support for lookahead")}
   | Lcaret regexi	     	    	   {$2}
   | regexi Ldoller  	     	    	 {$1}



symbol:
     Latom                       {Atom (Slit $1)}
   | Lbackref			 {LBR (String.sub $1 1 (String.length $1 -1))}
   | Lrange 			 {Atom (Slit "-")}
   | Lword                       {regexesAlt [Atom (Srange ("a", "z")) ;
                                              Atom (Srange ("A", "Z")) ;
                                              Atom (Srange ("0", "9"));
                                              Atom (Slit "_")]}
   | Lnword                      {Atom (constructand (negranges
                                             [Atom (Srange ("a", "z")) ;
                                              Atom (Srange ("A", "Z")) ;
                                              Atom (Srange ("0", "9"));
                                              Atom (Slit "_")]))}   
   | Lspace 			 {regexesAlt [Atom (Slit " ") ;
     				 	      Atom (Slit "\\u{0b}") ;
                                              Atom (Slit "\\u{0a}") ;
                                              Atom (Slit "\\u{0d}") ;
                                              Atom (Slit "\\u{09}") ;
                                              Atom (Slit "\\u{0c}") ;
                                              ]}
   | Lnonspace                   {Atom (Sand ((Sneg (Slit "\\u{20}")),
                                       (Sand ((Sneg (Slit "\\u{0a}")),
				       (Sand ((Sneg (Slit "\\u{0b}")),
                                       (Sand ((Sneg (Slit "\\u{0d}")),
				       (Sand ((Sneg (Slit "\\u{09}")),
                                       (Sneg (Slit "\\u{0c}"))))))))))))}
				       
   | Ldigit			 {Atom (Srange ("0", "9"))}
   | Lndigit		 {Atom (Sneg (Srange ("0","9")))}
   | Ldot 			 {Atom Wild}
   | Lexc			   {Atom (Slit "!")}
   | Lequal			 {Atom (Slit "=")}
   | Lcolon			 {Atom (Slit ":")}
   | Lcomma			 {Atom (Slit ",")}
   | LlParen     {Atom (Slit "{")}
   | LrParen     {Atom (Slit "}")}
   | Llalt       {Atom (Slit "[")}
   | Lralt       {Atom (Slit "]")}

rsymbol:
     Latom                       {Atom (Slit $1)}
   | Lbackref			 {LBR (String.sub $1 1 (String.length $1 -1))}
   | Lrange 			 {Atom (Slit "-")}
   | Lword                       {regexesAlt [Atom (Srange ("a", "z")) ;
                                              Atom (Srange ("A", "Z")) ;
                                              Atom (Srange ("0", "9"));
                                              Atom (Slit "_")]}
   | Lnword                      {Atom (constructand (negranges
                                             [Atom (Srange ("a", "z")) ;
                                              Atom (Srange ("A", "Z")) ;
                                              Atom (Srange ("0", "9"));
                                              Atom (Slit "_")]))}   
   | Lspace 			 {regexesAlt [Atom (Slit "\\u{20}") ;
     				 	      Atom (Slit "\\u{0b}") ;
                                              Atom (Slit "\\u{0a}") ;
                                              Atom (Slit "\\u{0d}") ;
                                              Atom (Slit "\\u{09}") ;
                                              Atom (Slit "\\u{0c}") ;
                                              ]}
   | Lnonspace                   {Atom (Sand ((Sneg (Slit "\\u{20}")),
                                       (Sand ((Sneg (Slit "\\u{0a}")),
				       (Sand ((Sneg (Slit "\\u{0b}")),
                                       (Sand ((Sneg (Slit "\\u{0d}")),
				       (Sand ((Sneg (Slit "\\u{09}")),
                                       (Sneg (Slit "\\u{0c}"))))))))))))}
				       
   | Ldigit			 {Atom (Srange ("0", "9"))}
   | Lndigit			 {Atom (Sneg (Srange ("0","9")))}
   | Ldot 			 {Atom (Slit ".")}
   | Lexc			 {Atom (Slit "!")}
   | Lequal			 {Atom (Slit "=")}
   | Lcolon			 {Atom (Slit ":")}
   | Lcomma			 {Atom (Slit ",")}
   | Lstar 	  		 {Atom (Slit "*")}
   | Loption			 {Atom (Slit "?")}
   | Lalt			 {Atom (Slit "|")}
   | Lplus			 {Atom (Slit "+")}
   | Llparen			 {Atom (Slit "(")}
   | Lrparen			 {Atom (Slit ")")}
   | Lcaret			 {Atom (Slit "^")}
   | Ldoller			 {Atom (Slit "$")}
   | LlParen     {Atom (Slit "{")}
   | LrParen     {Atom (Slit "}")}

range:
   | Latom Lrange Latom  {Atom (Srange ($1,$3))}
   | Latom Lrange  %prec Lalt {Alt (Atom (Slit $1), Atom (Slit "-"))}
   | rsymbol			 {$1}

ranges:
      range			  {[$1]}
    | range ranges                {$1 :: $2}









