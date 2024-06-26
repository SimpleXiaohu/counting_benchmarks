
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt (str.to.re "-")) (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "9") (str.to.re "0")) (re.++ (re.opt (re.range "0" "8")) (re.++ (re.range "0" "9") (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9"))))))) (re.++ (str.to.re ",") (re.++ (re.opt (str.to.re "-")) ((_ re.capture 2) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (str.to.re "0"))) (re.++ ((_ re.capture 3) (re.union (re.++ (str.to.re "1") (re.++ (re.range "0" "7") (re.range "0" "9"))) ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt (str.to.re "-")) (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "9") (str.to.re "0")) (re.++ (re.opt (re.range "0" "8")) (re.++ (re.range "0" "9") (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9"))))))) (re.++ (str.to.re ",") (re.++ (re.opt (str.to.re "-")) ((_ re.capture 2) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (str.to.re "0"))) (re.++ ((_ re.capture 3) (re.union (re.++ (str.to.re "1") (re.++ (re.range "0" "7") (re.range "0" "9"))) ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))))))))) re.all))) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt (str.to.re "-")) (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "9") (str.to.re "0")) (re.++ (re.opt (re.range "0" "8")) (re.++ (re.range "0" "9") (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9"))))))) (re.++ (str.to.re ",") (re.++ (re.opt (str.to.re "-")) ((_ re.capture 2) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (str.to.re "0"))) (re.++ ((_ re.capture 3) (re.union (re.++ (str.to.re "1") (re.++ (re.range "0" "7") (re.range "0" "9"))) ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt (str.to.re "-")) (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "9") (str.to.re "0")) (re.++ (re.opt (re.range "0" "8")) (re.++ (re.range "0" "9") (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9"))))))) (re.++ (str.to.re ",") (re.++ (re.opt (str.to.re "-")) ((_ re.capture 2) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (str.to.re "0"))) (re.++ ((_ re.capture 3) (re.union (re.++ (str.to.re "1") (re.++ (re.range "0" "7") (re.range "0" "9"))) ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt (str.to.re "-")) (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "9") (str.to.re "0")) (re.++ (re.opt (re.range "0" "8")) (re.++ (re.range "0" "9") (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9"))))))) (re.++ (str.to.re ",") (re.++ (re.opt (str.to.re "-")) ((_ re.capture 2) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (str.to.re "0"))) (re.++ ((_ re.capture 3) (re.union (re.++ (str.to.re "1") (re.++ (re.range "0" "7") (re.range "0" "9"))) ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))))))))) re.all))) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt (str.to.re "-")) (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "9") (str.to.re "0")) (re.++ (re.opt (re.range "0" "8")) (re.++ (re.range "0" "9") (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9"))))))) (re.++ (str.to.re ",") (re.++ (re.opt (str.to.re "-")) ((_ re.capture 2) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (str.to.re "0"))) (re.++ ((_ re.capture 3) (re.union (re.++ (str.to.re "1") (re.++ (re.range "0" "7") (re.range "0" "9"))) ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt (str.to.re "-")) (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "9") (str.to.re "0")) (re.++ (re.opt (re.range "0" "8")) (re.++ (re.range "0" "9") (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9"))))))) (re.++ (str.to.re ",") (re.++ (re.opt (str.to.re "-")) ((_ re.capture 2) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (str.to.re "0"))) (re.++ ((_ re.capture 3) (re.union (re.++ (str.to.re "1") (re.++ (re.range "0" "7") (re.range "0" "9"))) ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))))))))) re.all))))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt (str.to.re "-")) (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "9") (str.to.re "0")) (re.++ (re.opt (re.range "0" "8")) (re.++ (re.range "0" "9") (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9"))))))) (re.++ (str.to.re ",") (re.++ (re.opt (str.to.re "-")) ((_ re.capture 2) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (str.to.re "0"))) (re.++ ((_ re.capture 3) (re.union (re.++ (str.to.re "1") (re.++ (re.range "0" "7") (re.range "0" "9"))) ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))))))))) re.all))) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt (str.to.re "-")) (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "9") (str.to.re "0")) (re.++ (re.opt (re.range "0" "8")) (re.++ (re.range "0" "9") (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9"))))))) (re.++ (str.to.re ",") (re.++ (re.opt (str.to.re "-")) ((_ re.capture 2) (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "8") (str.to.re "0"))) (re.++ ((_ re.capture 3) (re.union (re.++ (str.to.re "1") (re.++ (re.range "0" "7") (re.range "0" "9"))) ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))))))))) re.all)))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
