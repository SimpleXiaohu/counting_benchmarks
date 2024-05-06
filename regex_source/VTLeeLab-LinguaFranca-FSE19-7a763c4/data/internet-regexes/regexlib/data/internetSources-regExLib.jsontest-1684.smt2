
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "j") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "e") (re.++ (str.to.re "r") (re.++ (str.to.re "y") (re.++ (str.to.re "-") (re.++ (re.* ((_ re.capture 1) (re.union (re.range "0" "9") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "m") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re ".") (re.++ (str.to.re "j") (str.to.re "s"))))))))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "j") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "e") (re.++ (str.to.re "r") (re.++ (str.to.re "y") (re.++ (str.to.re "-") (re.++ (re.* ((_ re.capture 1) (re.union (re.range "0" "9") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "m") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re ".") (re.++ (str.to.re "j") (str.to.re "s"))))))))))))))) re.all))) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "j") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "e") (re.++ (str.to.re "r") (re.++ (str.to.re "y") (re.++ (str.to.re "-") (re.++ (re.* ((_ re.capture 1) (re.union (re.range "0" "9") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "m") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re ".") (re.++ (str.to.re "j") (str.to.re "s"))))))))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "j") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "e") (re.++ (str.to.re "r") (re.++ (str.to.re "y") (re.++ (str.to.re "-") (re.++ (re.* ((_ re.capture 1) (re.union (re.range "0" "9") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "m") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re ".") (re.++ (str.to.re "j") (str.to.re "s"))))))))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "j") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "e") (re.++ (str.to.re "r") (re.++ (str.to.re "y") (re.++ (str.to.re "-") (re.++ (re.* ((_ re.capture 1) (re.union (re.range "0" "9") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "m") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re ".") (re.++ (str.to.re "j") (str.to.re "s"))))))))))))))) re.all))) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "j") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "e") (re.++ (str.to.re "r") (re.++ (str.to.re "y") (re.++ (str.to.re "-") (re.++ (re.* ((_ re.capture 1) (re.union (re.range "0" "9") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "m") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re ".") (re.++ (str.to.re "j") (str.to.re "s"))))))))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "j") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "e") (re.++ (str.to.re "r") (re.++ (str.to.re "y") (re.++ (str.to.re "-") (re.++ (re.* ((_ re.capture 1) (re.union (re.range "0" "9") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "m") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re ".") (re.++ (str.to.re "j") (str.to.re "s"))))))))))))))) re.all))))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "j") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "e") (re.++ (str.to.re "r") (re.++ (str.to.re "y") (re.++ (str.to.re "-") (re.++ (re.* ((_ re.capture 1) (re.union (re.range "0" "9") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "m") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re ".") (re.++ (str.to.re "j") (str.to.re "s"))))))))))))))) re.all))) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "j") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "e") (re.++ (str.to.re "r") (re.++ (str.to.re "y") (re.++ (str.to.re "-") (re.++ (re.* ((_ re.capture 1) (re.union (re.range "0" "9") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "m") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re ".") (re.++ (str.to.re "j") (str.to.re "s"))))))))))))))) re.all)))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
