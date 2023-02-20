
open String;;
open Char;;
open List ;;

(* The definition of the Abstract Syntax Tree (AST) for regex *)

let tranUnion s1 s2 = "(re.union " ^ s1 ^ " " ^ s2 ^ ")" ;;

type slabel = EmptyW
            | AllW
            | AnchStart
            | AnchEnd
            | Wild
            | Slit of string
            | Srange of (string * string)
            | Sand of slabel * slabel
            | Sneg of slabel

type regAST = Atom    of  slabel
            | Concat  of  regAST * regAST         (* the operator of concatenation *)
            | Alt     of  regAST * regAST         (* the operator of alternation *)
            | Capture of  regAST                  (* the operator of capture group *)
            | Kstar   of  regAST                  (* the operator of kleene star *)
            | LKstar  of  regAST                  (* the operator of lazy kleene star *)
            | Kplus  of  regAST                   (* the operator of lazy kleene star *)
            | LKplus  of  regAST                  (* the operator of lazy kleene star *)
            | Lloop  of  regAST * int * int       (* the operator of lazy kleene star *)
            | Llloop  of  regAST * int * int       (* the operator of lazy kleene star *)
            | LBR of string
            | Lall
            | Lallchar
            | Lopt of regAST
            | Loption of regAST


exception ParseASTError of string ;;

(* The type of prioritized automata *)

type label = SL of slabel | DL of int | DR of int | Empty ;;

type pt = { init:string; accept:string list;
            trans:(string * (label*string) * string) list} ;;

(* The translation from regAST to prioritized auomata *)

let mergeTrans pt1 pt2 = match (pt1,pt2) with
({init=_;accept=_;trans=ts1},{init=_;accept=_;trans=ts2}) -> (ts1 @ ts2)

 let gstate n = "s" ^ (string_of_int n) ;;

let lo l = (l,"o") ;;

let tranRrange s1 s2 = "(re.range \"" ^ s1 ^ "\" \"" ^ s2 ^ "\")" ;;

let rmslashs s p = match p with (c , t) -> let ss = split_on_char c s in (String.concat t ss) ;;

let rec rmslash s ps = List.fold_left rmslashs s ps ;;

let dealspace s = if s = " " then " " else s ;;

let rec containAnchors t = match t with 
      Atom AnchStart -> true
    | Atom AnchEnd -> true
    | Atom s -> false
    | LBR s -> false
    | Concat (t1,t2) -> (containAnchors t1) || (containAnchors t2)
    | Alt (t1,t2) -> (containAnchors t1) || (containAnchors t2)
    | Kstar t -> containAnchors t
    | LKstar t -> containAnchors t
    | Kplus t -> containAnchors t
    | LKplus t -> containAnchors t
    | Capture t -> containAnchors t
    | Lallchar -> false
    | Lall -> false 
    | Lloop (t,_,_) -> containAnchors t
    | Llloop (t,_,_) -> containAnchors t
    | Lopt t -> false 
    | Loption t -> false ;;

let rec processAnchors t = if (containAnchors t) then
              processAnchorTail (processAnchorHead t) else
              Concat (LKstar Lallchar, Concat (t, Lall))
         
and
    processAnchorHead t = match t with
      Atom AnchStart -> Atom AnchStart
    | Atom s -> Concat (LKstar (Lallchar), Atom s)
    | LBR s -> Concat (LKstar (Lallchar), LBR s)
    | Concat (t1,t2) -> Concat (processAnchorHead t1, t2)
    | Alt (t1,t2) -> Alt (processAnchorHead t1, processAnchorHead t2)
    | Kstar t -> Concat (LKstar (Lallchar), Kstar t)
    | LKstar t -> Concat (LKstar (Lallchar), LKstar t)
    | Kplus t -> Concat (LKstar (Lallchar), Kplus t)
    | LKplus t -> Concat (LKstar (Lallchar), LKplus t)
    | Capture t -> Capture (processAnchorHead t)
    | Lall -> Lall
    | Lallchar -> Lallchar
    | Lloop (r, n1, n2) -> Concat (LKstar (Lallchar), Lloop (r, n1, n2))
    | Llloop (r, n1, n2) -> Concat (LKstar (Lallchar), Llloop (r, n1, n2))
    | Lopt t -> Concat (LKstar (Lallchar), Lopt t)
    | Loption t -> Concat (LKstar (Lallchar), Loption t)

and  processAnchorTail t = match t with
      Atom AnchEnd -> Atom AnchEnd
    | Atom s -> Concat (Atom s, Lall)
    | LBR s -> Concat (LBR s, Lall)
    | Concat (t1,t2) -> Concat (t1, processAnchorTail t2)
    | Alt (t1,t2) -> Alt (processAnchorTail t1, processAnchorTail t2)
    | Kstar t -> Concat (Kstar t, Lall)
    | LKstar t -> Concat (LKstar t, Lall)
    | Kplus t -> Concat (Kplus t, Lall)
    | LKplus t -> Concat (LKplus t, Lall)
    | Capture t -> Concat (Capture t, Lall)
    | Lall -> Lall
    | Lallchar -> Lallchar
    | Lloop (r, n1, n2) -> Concat (Lloop (r, n1, n2), Lall)
    | Llloop (r, n1, n2) -> Concat (Llloop (r, n1, n2), Lall)
    | Lopt t -> Concat (Lopt t, Lall)
    | Loption t -> Concat (Loption t, Lall)
    ;;



let rec slabeltostr sl = match sl with
           EmptyW -> "(str.to_re \"\")"
         | AllW -> "re.all"
         (* | AnchStart -> "re.begin-anchor"  *)
         | AnchStart -> "(str.to_re \"\")" 
         (* | AnchEnd ->   "re.end-anchor"  *)
         | AnchEnd ->   "(str.to_re \"\")" 
         (* | Wild -> "(re.diff (re.range \"\\u{0001}\" \"\\u{ffff}\") (str.to_re \"\\n\"))"  *)
         | Wild -> "(re.diff re.allchar (str.to_re \"\\n\"))" 
         | Slit s -> "(str.to_re \"" ^ (dealspace s) ^ "\")"
         | Srange (s1,s2) -> tranRrange (dealspace s1) (dealspace s2)
         | Sneg l -> "(re.diff re.allchar " ^ (slabeltostr l) ^ ")"
         (* | Sneg l -> "(re.diff (re.range \"\\u{0001}\" \"\\u{ffff}\") " ^ (slabeltostr l) ^ ")" *)
         | Sand (l1,l2) -> "(re.inter " ^ (slabeltostr l1) ^ " "^ (slabeltostr l2) ^ ")" 
                      (* raise (ParseASTError "inter error") *)
     ;;

let rec strlabel l = match l with DL n -> "["^(string_of_int n)
		       		       | SL ll -> (slabeltostr ll)
	       			       | Empty -> ""
                                       | DR n -> "]"^(string_of_int n^":")
;;

let tranAtom s n =  slabeltostr s;;

let tranLBR s  = "(_ re.reference " ^ s ^ ")"

let rec tranConcat at1 at2 n = "(re.++ " ^ at1 ^ " " ^ at2 ^ ")"

let rec tranAlt at1 at2 n = tranUnion at1 at2;;


let tranKstar at n = "(re.* " ^ at ^ ")" ;;

let tranLKstar at n =  "(re.*? " ^ at ^ ")" ;;

let tranKplus at n = "(re.+ " ^ at ^ ")" ;;

let tranLKplus at n =  "(re.+? " ^ at ^ ")" ;;

let tranLopt at n = "(re.opt? " ^ at ^ ")"
let tranLoption at n = "(re.opt " ^ at ^ ")"


let rec trantoPT n t = match t with
Atom s -> ((tranAtom s n), n)
    | LBR s -> (tranLBR s, n)
    | Concat (t1,t2) ->
        let (at1, n1) = (trantoPT n t1) in
	    let (at2, n2) = (trantoPT n1 t2) in
	       (tranConcat at1 at2 n, n2)
				    
    | Alt (t1,t2) -> 
        let (at1, n1) = (trantoPT n t1) in
	   let (at2, n2) = (trantoPT n1 t2) in
			(tranAlt at1 at2 n, n2)
    | Kstar t -> 
        let (at1,n1) = trantoPT n t in
	    (tranKstar at1 n, n1)
    | LKstar t -> 
       let (at1,n1) = trantoPT n t in
	      (tranLKstar at1 n, n1)
    | Kplus t -> 
        let (at1,n1) = trantoPT n t in
	    (tranKplus at1 n, n1)
    | LKplus t -> 
       let (at1,n1) = trantoPT n t in
	      (tranLKplus at1 n, n1)
    | Capture t -> 
    let (at, n1) = trantoPT (n+1) t in
(* ("((_ re.capture " ^ (string_of_int n) ^ ") " ^ at ^ ")", n1) *)
    ( at, n1)
    | Lall -> ("re.all", n)
    | Lallchar -> ("re.allchar", n)
    | Lloop (t, n11 ,n12) -> let (at1,n1) = trantoPT n t in ("((_ re.loop " ^ (string_of_int n11) ^ " " ^ 
                                          (string_of_int n12) ^ ") " ^ at1 ^ ")", n1)
    | Llloop (t, n11 ,n12) -> let (at1,n1) = trantoPT n t in ("((_ re.loop? " ^ (string_of_int n11) ^ " " ^ 
                                          (string_of_int n12) ^ ") " ^ at1 ^ ")", n1)
    | Lopt t -> let (at1,n1) = trantoPT n t in
                (tranLopt at1 n, n1)
    | Loption t -> let (at1,n1) = trantoPT n t in
                (tranLoption at1 n, n1)

     ;;


let split_on_char sep s =
  let r = ref [] in
  let j = ref ((String.length) s) in
  for i = String.length s - 1 downto 0 do
    if (String.get s i) = sep then begin
      r := sub s (i + 1) (!j - i - 1) :: !r;
      j := i
    end
  done;
  sub s 0 !j :: !r


let trantoPTC reg = match (trantoPT 0 reg) with (at,n) -> at;;

let rec print_sl l = match l with 
       [] -> print_string "\n"
     | s :: tl -> print_string (s^"."); print_sl tl ;;


let rec print_tl l = match l with 
       [] -> print_string "\n"
     | (s1,(l,_),s2) :: tl -> print_string ("("^s1^":"^
					(strlabel l) ^s2^")"); print_tl tl;;



let print_pt t = match t with
     {init=is; accept= ls; trans=tls} -> 
           print_string is; print_string "\n"; 
           print_sl ls; print_string "\n"; 
           print_tl tls; print_string "\n";
           print_string "_____________________\n";
;;



(* extract transitions from a state *)

let rec extTran ts s = match ts with
       [] -> ([],[])
    |  (s1,t,s2) :: tls when s1 = s -> (match extTran tls s with
				(sl,nl) -> (((s1,t,s2)::sl),nl))
    |  (s1,t,s2) :: tls -> (match extTran tls s with (sl,nl) -> (sl,((s1,t,s2)::nl)))


let memState s ts = (if mem s ts then ts else (s::ts)) ;;

let rec extStates ts = match ts with 
         [] -> []
     |   (s1,t,s2)::tls -> let ss = extStates tls in
                               (memState s2 (memState s1 ss))
     ;;



(*  The optimization of Priority Automata *)
(*  We merge any transition s -> l ->  s' with l is DL, DR, empty
    *)

let mstates s1 s2 = s1 ^ "-" ^ s2 ;;

exception OptimError of string ;;

let rec reTran ts s1 s2 = let ns = mstates s1 s2 in (match ts with
      [] -> []
    | (sb,l,se)::rts when (sb=s1 && se=s2) -> 
                       (match l with SL s -> (ns,l,ns) :: (reTran rts s1 s2)
                            | _ -> (reTran rts s1 s2))
    | (sb,l,se)::rts when (sb=s1) -> (ns,l,se) :: (reTran rts s1 s2)
    | (sb,l,se)::rts when (sb=s2) -> (ns,l,se) :: (reTran rts s1 s2)
    | (sb,l,se)::rts when (se=s1) -> (sb,l,ns) :: (reTran rts s1 s2)
    | (sb,l,se)::rts when (se=s2) -> (sb,l,ns) :: (reTran rts s1 s2)
    | (sb,l,se)::rts -> ((sb,l,se) :: reTran rts s1 s2)
    );;








 







        
