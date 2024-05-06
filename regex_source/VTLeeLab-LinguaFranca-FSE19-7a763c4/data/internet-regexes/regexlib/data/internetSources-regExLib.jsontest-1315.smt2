
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.union (re.union (re.++ (str.to.re "F") (str.to.re "I")) (re.++ (str.to.re "H") (str.to.re "U"))) (re.++ (str.to.re "L") (str.to.re "U"))) (re.++ (str.to.re "M") (str.to.re "T"))) (re.++ (str.to.re "S") (str.to.re "I")))) (re.opt (str.to.re "-"))))) ((_ re.loop 0 8) (re.range "0" "9"))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.union (re.union (re.++ (str.to.re "F") (str.to.re "I")) (re.++ (str.to.re "H") (str.to.re "U"))) (re.++ (str.to.re "L") (str.to.re "U"))) (re.++ (str.to.re "M") (str.to.re "T"))) (re.++ (str.to.re "S") (str.to.re "I")))) (re.opt (str.to.re "-"))))) ((_ re.loop 0 8) (re.range "0" "9"))) re.all))) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.union (re.union (re.++ (str.to.re "F") (str.to.re "I")) (re.++ (str.to.re "H") (str.to.re "U"))) (re.++ (str.to.re "L") (str.to.re "U"))) (re.++ (str.to.re "M") (str.to.re "T"))) (re.++ (str.to.re "S") (str.to.re "I")))) (re.opt (str.to.re "-"))))) ((_ re.loop 0 8) (re.range "0" "9"))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.union (re.union (re.++ (str.to.re "F") (str.to.re "I")) (re.++ (str.to.re "H") (str.to.re "U"))) (re.++ (str.to.re "L") (str.to.re "U"))) (re.++ (str.to.re "M") (str.to.re "T"))) (re.++ (str.to.re "S") (str.to.re "I")))) (re.opt (str.to.re "-"))))) ((_ re.loop 0 8) (re.range "0" "9"))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.union (re.union (re.++ (str.to.re "F") (str.to.re "I")) (re.++ (str.to.re "H") (str.to.re "U"))) (re.++ (str.to.re "L") (str.to.re "U"))) (re.++ (str.to.re "M") (str.to.re "T"))) (re.++ (str.to.re "S") (str.to.re "I")))) (re.opt (str.to.re "-"))))) ((_ re.loop 0 8) (re.range "0" "9"))) re.all))) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.union (re.union (re.++ (str.to.re "F") (str.to.re "I")) (re.++ (str.to.re "H") (str.to.re "U"))) (re.++ (str.to.re "L") (str.to.re "U"))) (re.++ (str.to.re "M") (str.to.re "T"))) (re.++ (str.to.re "S") (str.to.re "I")))) (re.opt (str.to.re "-"))))) ((_ re.loop 0 8) (re.range "0" "9"))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.union (re.union (re.++ (str.to.re "F") (str.to.re "I")) (re.++ (str.to.re "H") (str.to.re "U"))) (re.++ (str.to.re "L") (str.to.re "U"))) (re.++ (str.to.re "M") (str.to.re "T"))) (re.++ (str.to.re "S") (str.to.re "I")))) (re.opt (str.to.re "-"))))) ((_ re.loop 0 8) (re.range "0" "9"))) re.all))))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.union (re.union (re.++ (str.to.re "F") (str.to.re "I")) (re.++ (str.to.re "H") (str.to.re "U"))) (re.++ (str.to.re "L") (str.to.re "U"))) (re.++ (str.to.re "M") (str.to.re "T"))) (re.++ (str.to.re "S") (str.to.re "I")))) (re.opt (str.to.re "-"))))) ((_ re.loop 0 8) (re.range "0" "9"))) re.all))) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.union (re.union (re.++ (str.to.re "F") (str.to.re "I")) (re.++ (str.to.re "H") (str.to.re "U"))) (re.++ (str.to.re "L") (str.to.re "U"))) (re.++ (str.to.re "M") (str.to.re "T"))) (re.++ (str.to.re "S") (str.to.re "I")))) (re.opt (str.to.re "-"))))) ((_ re.loop 0 8) (re.range "0" "9"))) re.all)))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
