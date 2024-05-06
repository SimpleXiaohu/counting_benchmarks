
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ ((_ re.loop 0 6) (re.range "0" "9")) (re.++ (re.opt ((_ re.capture 2) (re.union (str.to.re "-") (str.to.re " ")))) (re.union (str.to.re "t") (re.union (str.to.re "r") (re.union (str.to.re "w") (re.union (str.to.re "a") (re.union (str.to.re "g") (re.union (str.to.re "m") (re.union (str.to.re "y") (re.union (str.to.re "f") (re.union (str.to.re "p") (re.union (str.to.re "d") (re.union (str.to.re "x") (re.union (str.to.re "b") (re.union (str.to.re "n") (re.union (str.to.re "j") (re.union (str.to.re "z") (re.union (str.to.re "s") (re.union (str.to.re "q") (re.union (str.to.re "v") (re.union (str.to.re "h") (re.union (str.to.re "l") (re.union (str.to.re "c") (re.union (str.to.re "k") (str.to.re "e")))))))))))))))))))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ ((_ re.loop 0 6) (re.range "0" "9")) (re.++ (re.opt ((_ re.capture 2) (re.union (str.to.re "-") (str.to.re " ")))) (re.union (str.to.re "t") (re.union (str.to.re "r") (re.union (str.to.re "w") (re.union (str.to.re "a") (re.union (str.to.re "g") (re.union (str.to.re "m") (re.union (str.to.re "y") (re.union (str.to.re "f") (re.union (str.to.re "p") (re.union (str.to.re "d") (re.union (str.to.re "x") (re.union (str.to.re "b") (re.union (str.to.re "n") (re.union (str.to.re "j") (re.union (str.to.re "z") (re.union (str.to.re "s") (re.union (str.to.re "q") (re.union (str.to.re "v") (re.union (str.to.re "h") (re.union (str.to.re "l") (re.union (str.to.re "c") (re.union (str.to.re "k") (str.to.re "e")))))))))))))))))))))))))) re.all))) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ ((_ re.loop 0 6) (re.range "0" "9")) (re.++ (re.opt ((_ re.capture 2) (re.union (str.to.re "-") (str.to.re " ")))) (re.union (str.to.re "t") (re.union (str.to.re "r") (re.union (str.to.re "w") (re.union (str.to.re "a") (re.union (str.to.re "g") (re.union (str.to.re "m") (re.union (str.to.re "y") (re.union (str.to.re "f") (re.union (str.to.re "p") (re.union (str.to.re "d") (re.union (str.to.re "x") (re.union (str.to.re "b") (re.union (str.to.re "n") (re.union (str.to.re "j") (re.union (str.to.re "z") (re.union (str.to.re "s") (re.union (str.to.re "q") (re.union (str.to.re "v") (re.union (str.to.re "h") (re.union (str.to.re "l") (re.union (str.to.re "c") (re.union (str.to.re "k") (str.to.re "e")))))))))))))))))))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ ((_ re.loop 0 6) (re.range "0" "9")) (re.++ (re.opt ((_ re.capture 2) (re.union (str.to.re "-") (str.to.re " ")))) (re.union (str.to.re "t") (re.union (str.to.re "r") (re.union (str.to.re "w") (re.union (str.to.re "a") (re.union (str.to.re "g") (re.union (str.to.re "m") (re.union (str.to.re "y") (re.union (str.to.re "f") (re.union (str.to.re "p") (re.union (str.to.re "d") (re.union (str.to.re "x") (re.union (str.to.re "b") (re.union (str.to.re "n") (re.union (str.to.re "j") (re.union (str.to.re "z") (re.union (str.to.re "s") (re.union (str.to.re "q") (re.union (str.to.re "v") (re.union (str.to.re "h") (re.union (str.to.re "l") (re.union (str.to.re "c") (re.union (str.to.re "k") (str.to.re "e")))))))))))))))))))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ ((_ re.loop 0 6) (re.range "0" "9")) (re.++ (re.opt ((_ re.capture 2) (re.union (str.to.re "-") (str.to.re " ")))) (re.union (str.to.re "t") (re.union (str.to.re "r") (re.union (str.to.re "w") (re.union (str.to.re "a") (re.union (str.to.re "g") (re.union (str.to.re "m") (re.union (str.to.re "y") (re.union (str.to.re "f") (re.union (str.to.re "p") (re.union (str.to.re "d") (re.union (str.to.re "x") (re.union (str.to.re "b") (re.union (str.to.re "n") (re.union (str.to.re "j") (re.union (str.to.re "z") (re.union (str.to.re "s") (re.union (str.to.re "q") (re.union (str.to.re "v") (re.union (str.to.re "h") (re.union (str.to.re "l") (re.union (str.to.re "c") (re.union (str.to.re "k") (str.to.re "e")))))))))))))))))))))))))) re.all))) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ ((_ re.loop 0 6) (re.range "0" "9")) (re.++ (re.opt ((_ re.capture 2) (re.union (str.to.re "-") (str.to.re " ")))) (re.union (str.to.re "t") (re.union (str.to.re "r") (re.union (str.to.re "w") (re.union (str.to.re "a") (re.union (str.to.re "g") (re.union (str.to.re "m") (re.union (str.to.re "y") (re.union (str.to.re "f") (re.union (str.to.re "p") (re.union (str.to.re "d") (re.union (str.to.re "x") (re.union (str.to.re "b") (re.union (str.to.re "n") (re.union (str.to.re "j") (re.union (str.to.re "z") (re.union (str.to.re "s") (re.union (str.to.re "q") (re.union (str.to.re "v") (re.union (str.to.re "h") (re.union (str.to.re "l") (re.union (str.to.re "c") (re.union (str.to.re "k") (str.to.re "e")))))))))))))))))))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ ((_ re.loop 0 6) (re.range "0" "9")) (re.++ (re.opt ((_ re.capture 2) (re.union (str.to.re "-") (str.to.re " ")))) (re.union (str.to.re "t") (re.union (str.to.re "r") (re.union (str.to.re "w") (re.union (str.to.re "a") (re.union (str.to.re "g") (re.union (str.to.re "m") (re.union (str.to.re "y") (re.union (str.to.re "f") (re.union (str.to.re "p") (re.union (str.to.re "d") (re.union (str.to.re "x") (re.union (str.to.re "b") (re.union (str.to.re "n") (re.union (str.to.re "j") (re.union (str.to.re "z") (re.union (str.to.re "s") (re.union (str.to.re "q") (re.union (str.to.re "v") (re.union (str.to.re "h") (re.union (str.to.re "l") (re.union (str.to.re "c") (re.union (str.to.re "k") (str.to.re "e")))))))))))))))))))))))))) re.all))))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ ((_ re.loop 0 6) (re.range "0" "9")) (re.++ (re.opt ((_ re.capture 2) (re.union (str.to.re "-") (str.to.re " ")))) (re.union (str.to.re "t") (re.union (str.to.re "r") (re.union (str.to.re "w") (re.union (str.to.re "a") (re.union (str.to.re "g") (re.union (str.to.re "m") (re.union (str.to.re "y") (re.union (str.to.re "f") (re.union (str.to.re "p") (re.union (str.to.re "d") (re.union (str.to.re "x") (re.union (str.to.re "b") (re.union (str.to.re "n") (re.union (str.to.re "j") (re.union (str.to.re "z") (re.union (str.to.re "s") (re.union (str.to.re "q") (re.union (str.to.re "v") (re.union (str.to.re "h") (re.union (str.to.re "l") (re.union (str.to.re "c") (re.union (str.to.re "k") (str.to.re "e")))))))))))))))))))))))))) re.all))) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ ((_ re.loop 0 6) (re.range "0" "9")) (re.++ (re.opt ((_ re.capture 2) (re.union (str.to.re "-") (str.to.re " ")))) (re.union (str.to.re "t") (re.union (str.to.re "r") (re.union (str.to.re "w") (re.union (str.to.re "a") (re.union (str.to.re "g") (re.union (str.to.re "m") (re.union (str.to.re "y") (re.union (str.to.re "f") (re.union (str.to.re "p") (re.union (str.to.re "d") (re.union (str.to.re "x") (re.union (str.to.re "b") (re.union (str.to.re "n") (re.union (str.to.re "j") (re.union (str.to.re "z") (re.union (str.to.re "s") (re.union (str.to.re "q") (re.union (str.to.re "v") (re.union (str.to.re "h") (re.union (str.to.re "l") (re.union (str.to.re "c") (re.union (str.to.re "k") (str.to.re "e")))))))))))))))))))))))))) re.all)))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)