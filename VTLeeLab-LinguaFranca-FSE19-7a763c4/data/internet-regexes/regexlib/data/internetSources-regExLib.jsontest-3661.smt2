
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.loop 3 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 3) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9")))) (str.to.re ".")))) ((_ re.capture 4) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 5) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9"))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.loop 3 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 3) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9")))) (str.to.re ".")))) ((_ re.capture 4) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 5) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9"))))) re.all))) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.loop 3 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 3) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9")))) (str.to.re ".")))) ((_ re.capture 4) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 5) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9"))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.loop 3 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 3) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9")))) (str.to.re ".")))) ((_ re.capture 4) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 5) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9"))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.loop 3 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 3) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9")))) (str.to.re ".")))) ((_ re.capture 4) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 5) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9"))))) re.all))) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.loop 3 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 3) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9")))) (str.to.re ".")))) ((_ re.capture 4) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 5) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9"))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.loop 3 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 3) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9")))) (str.to.re ".")))) ((_ re.capture 4) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 5) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9"))))) re.all))))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.loop 3 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 3) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9")))) (str.to.re ".")))) ((_ re.capture 4) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 5) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9"))))) re.all))) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.loop 3 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 3) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9")))) (str.to.re ".")))) ((_ re.capture 4) (re.union (re.++ (str.to.re "2") (re.++ (str.to.re "5") (re.range "0" "5"))) (re.++ ((_ re.loop 0 1) ((_ re.capture 5) (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to.re "1")) (re.range "0" "9"))))) (re.range "0" "9"))))) re.all)))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)