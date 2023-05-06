
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.union (re.union (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) ((_ re.loop 0 4) (re.range "0" "9")))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.union (re.union (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) ((_ re.loop 0 4) (re.range "0" "9")))))) re.all))) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.union (re.union (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) ((_ re.loop 0 4) (re.range "0" "9")))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.union (re.union (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) ((_ re.loop 0 4) (re.range "0" "9")))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.union (re.union (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) ((_ re.loop 0 4) (re.range "0" "9")))))) re.all))) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.union (re.union (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) ((_ re.loop 0 4) (re.range "0" "9")))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.union (re.union (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) ((_ re.loop 0 4) (re.range "0" "9")))))) re.all))))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.union (re.union (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) ((_ re.loop 0 4) (re.range "0" "9")))))) re.all))) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.union (re.union (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.++ (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "-"))) ((_ re.loop 0 4) (re.range "0" "9")))))) re.all)))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
