
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "C") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re "l") (re.++ (re.+ (str.to.re " ")) (re.++ (str.to.re "1") (re.++ ((_ re.capture 1) (re.++ (str.to.re "5") (re.++ (str.to.re "0") (str.to.re "5")))) (re.++ (str.to.re " ") (re.++ (str.to.re "3") (re.++ (str.to.re "8") (re.++ (str.to.re "4") (re.++ (str.to.re "-") (re.++ (str.to.re "8") (re.++ (str.to.re "2") (re.++ (str.to.re "2") (re.++ (str.to.re "4") (re.++ (str.to.re " ") (re.++ (str.to.re "n") (re.++ (str.to.re "o") (str.to.re "w")))))))))))))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "C") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re "l") (re.++ (re.+ (str.to.re " ")) (re.++ (str.to.re "1") (re.++ ((_ re.capture 1) (re.++ (str.to.re "5") (re.++ (str.to.re "0") (str.to.re "5")))) (re.++ (str.to.re " ") (re.++ (str.to.re "3") (re.++ (str.to.re "8") (re.++ (str.to.re "4") (re.++ (str.to.re "-") (re.++ (str.to.re "8") (re.++ (str.to.re "2") (re.++ (str.to.re "2") (re.++ (str.to.re "4") (re.++ (str.to.re " ") (re.++ (str.to.re "n") (re.++ (str.to.re "o") (str.to.re "w")))))))))))))))))))) re.all))) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "C") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re "l") (re.++ (re.+ (str.to.re " ")) (re.++ (str.to.re "1") (re.++ ((_ re.capture 1) (re.++ (str.to.re "5") (re.++ (str.to.re "0") (str.to.re "5")))) (re.++ (str.to.re " ") (re.++ (str.to.re "3") (re.++ (str.to.re "8") (re.++ (str.to.re "4") (re.++ (str.to.re "-") (re.++ (str.to.re "8") (re.++ (str.to.re "2") (re.++ (str.to.re "2") (re.++ (str.to.re "4") (re.++ (str.to.re " ") (re.++ (str.to.re "n") (re.++ (str.to.re "o") (str.to.re "w")))))))))))))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "C") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re "l") (re.++ (re.+ (str.to.re " ")) (re.++ (str.to.re "1") (re.++ ((_ re.capture 1) (re.++ (str.to.re "5") (re.++ (str.to.re "0") (str.to.re "5")))) (re.++ (str.to.re " ") (re.++ (str.to.re "3") (re.++ (str.to.re "8") (re.++ (str.to.re "4") (re.++ (str.to.re "-") (re.++ (str.to.re "8") (re.++ (str.to.re "2") (re.++ (str.to.re "2") (re.++ (str.to.re "4") (re.++ (str.to.re " ") (re.++ (str.to.re "n") (re.++ (str.to.re "o") (str.to.re "w")))))))))))))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "C") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re "l") (re.++ (re.+ (str.to.re " ")) (re.++ (str.to.re "1") (re.++ ((_ re.capture 1) (re.++ (str.to.re "5") (re.++ (str.to.re "0") (str.to.re "5")))) (re.++ (str.to.re " ") (re.++ (str.to.re "3") (re.++ (str.to.re "8") (re.++ (str.to.re "4") (re.++ (str.to.re "-") (re.++ (str.to.re "8") (re.++ (str.to.re "2") (re.++ (str.to.re "2") (re.++ (str.to.re "4") (re.++ (str.to.re " ") (re.++ (str.to.re "n") (re.++ (str.to.re "o") (str.to.re "w")))))))))))))))))))) re.all))) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "C") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re "l") (re.++ (re.+ (str.to.re " ")) (re.++ (str.to.re "1") (re.++ ((_ re.capture 1) (re.++ (str.to.re "5") (re.++ (str.to.re "0") (str.to.re "5")))) (re.++ (str.to.re " ") (re.++ (str.to.re "3") (re.++ (str.to.re "8") (re.++ (str.to.re "4") (re.++ (str.to.re "-") (re.++ (str.to.re "8") (re.++ (str.to.re "2") (re.++ (str.to.re "2") (re.++ (str.to.re "4") (re.++ (str.to.re " ") (re.++ (str.to.re "n") (re.++ (str.to.re "o") (str.to.re "w")))))))))))))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "C") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re "l") (re.++ (re.+ (str.to.re " ")) (re.++ (str.to.re "1") (re.++ ((_ re.capture 1) (re.++ (str.to.re "5") (re.++ (str.to.re "0") (str.to.re "5")))) (re.++ (str.to.re " ") (re.++ (str.to.re "3") (re.++ (str.to.re "8") (re.++ (str.to.re "4") (re.++ (str.to.re "-") (re.++ (str.to.re "8") (re.++ (str.to.re "2") (re.++ (str.to.re "2") (re.++ (str.to.re "4") (re.++ (str.to.re " ") (re.++ (str.to.re "n") (re.++ (str.to.re "o") (str.to.re "w")))))))))))))))))))) re.all))))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "C") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re "l") (re.++ (re.+ (str.to.re " ")) (re.++ (str.to.re "1") (re.++ ((_ re.capture 1) (re.++ (str.to.re "5") (re.++ (str.to.re "0") (str.to.re "5")))) (re.++ (str.to.re " ") (re.++ (str.to.re "3") (re.++ (str.to.re "8") (re.++ (str.to.re "4") (re.++ (str.to.re "-") (re.++ (str.to.re "8") (re.++ (str.to.re "2") (re.++ (str.to.re "2") (re.++ (str.to.re "4") (re.++ (str.to.re " ") (re.++ (str.to.re "n") (re.++ (str.to.re "o") (str.to.re "w")))))))))))))))))))) re.all))) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "C") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re "l") (re.++ (re.+ (str.to.re " ")) (re.++ (str.to.re "1") (re.++ ((_ re.capture 1) (re.++ (str.to.re "5") (re.++ (str.to.re "0") (str.to.re "5")))) (re.++ (str.to.re " ") (re.++ (str.to.re "3") (re.++ (str.to.re "8") (re.++ (str.to.re "4") (re.++ (str.to.re "-") (re.++ (str.to.re "8") (re.++ (str.to.re "2") (re.++ (str.to.re "2") (re.++ (str.to.re "4") (re.++ (str.to.re " ") (re.++ (str.to.re "n") (re.++ (str.to.re "o") (str.to.re "w")))))))))))))))))))) re.all)))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
