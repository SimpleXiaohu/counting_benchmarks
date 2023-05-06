
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (str.to.re "0"))))))) (re.++ (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to.re "1") (re.++ (re.range "1" "7") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9")))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (str.to.re "0"))))))) (re.++ (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to.re "1") (re.++ (re.range "1" "7") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9")))))))) re.end-anchor)) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (str.to.re "0"))))))) (re.++ (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to.re "1") (re.++ (re.range "1" "7") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9")))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (str.to.re "0"))))))) (re.++ (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to.re "1") (re.++ (re.range "1" "7") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9")))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (str.to.re "0"))))))) (re.++ (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to.re "1") (re.++ (re.range "1" "7") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9")))))))) re.end-anchor)) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (str.to.re "0"))))))) (re.++ (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to.re "1") (re.++ (re.range "1" "7") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9")))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (str.to.re "0"))))))) (re.++ (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to.re "1") (re.++ (re.range "1" "7") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9")))))))) re.end-anchor)))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (str.to.re "0"))))))) (re.++ (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to.re "1") (re.++ (re.range "1" "7") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9")))))))) re.end-anchor)) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (str.to.re "0"))))))) (re.++ (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to.re "1") (re.++ (re.range "1" "7") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9")))))))) re.end-anchor))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
