
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "{") (re.++ (str.to.re "C") (re.++ (str.to.re "H") (re.++ (str.to.re "B") (re.++ (str.to.re "L") (re.++ (str.to.re "O") (re.++ (str.to.re "C") (re.++ (str.to.re "K") (re.++ (str.to.re ":") ((_ re.capture 1) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re "}")))))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "{") (re.++ (str.to.re "C") (re.++ (str.to.re "H") (re.++ (str.to.re "B") (re.++ (str.to.re "L") (re.++ (str.to.re "O") (re.++ (str.to.re "C") (re.++ (str.to.re "K") (re.++ (str.to.re ":") ((_ re.capture 1) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re "}")))))))))))) re.all))) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "{") (re.++ (str.to.re "C") (re.++ (str.to.re "H") (re.++ (str.to.re "B") (re.++ (str.to.re "L") (re.++ (str.to.re "O") (re.++ (str.to.re "C") (re.++ (str.to.re "K") (re.++ (str.to.re ":") ((_ re.capture 1) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re "}")))))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "{") (re.++ (str.to.re "C") (re.++ (str.to.re "H") (re.++ (str.to.re "B") (re.++ (str.to.re "L") (re.++ (str.to.re "O") (re.++ (str.to.re "C") (re.++ (str.to.re "K") (re.++ (str.to.re ":") ((_ re.capture 1) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re "}")))))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "{") (re.++ (str.to.re "C") (re.++ (str.to.re "H") (re.++ (str.to.re "B") (re.++ (str.to.re "L") (re.++ (str.to.re "O") (re.++ (str.to.re "C") (re.++ (str.to.re "K") (re.++ (str.to.re ":") ((_ re.capture 1) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re "}")))))))))))) re.all))) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "{") (re.++ (str.to.re "C") (re.++ (str.to.re "H") (re.++ (str.to.re "B") (re.++ (str.to.re "L") (re.++ (str.to.re "O") (re.++ (str.to.re "C") (re.++ (str.to.re "K") (re.++ (str.to.re ":") ((_ re.capture 1) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re "}")))))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "{") (re.++ (str.to.re "C") (re.++ (str.to.re "H") (re.++ (str.to.re "B") (re.++ (str.to.re "L") (re.++ (str.to.re "O") (re.++ (str.to.re "C") (re.++ (str.to.re "K") (re.++ (str.to.re ":") ((_ re.capture 1) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re "}")))))))))))) re.all))))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "{") (re.++ (str.to.re "C") (re.++ (str.to.re "H") (re.++ (str.to.re "B") (re.++ (str.to.re "L") (re.++ (str.to.re "O") (re.++ (str.to.re "C") (re.++ (str.to.re "K") (re.++ (str.to.re ":") ((_ re.capture 1) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re "}")))))))))))) re.all))) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "{") (re.++ (str.to.re "C") (re.++ (str.to.re "H") (re.++ (str.to.re "B") (re.++ (str.to.re "L") (re.++ (str.to.re "O") (re.++ (str.to.re "C") (re.++ (str.to.re "K") (re.++ (str.to.re ":") ((_ re.capture 1) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re "}")))))))))))) re.all)))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)