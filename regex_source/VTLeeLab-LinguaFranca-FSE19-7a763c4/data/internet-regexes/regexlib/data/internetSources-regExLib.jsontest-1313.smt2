
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.++ (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (re.range "A" "Z")))))) (re.++ (str.to.re " ") ((_ re.capture 3) (re.++ (re.range "0" "9") ((_ re.loop 0 2) (re.range "A" "Z"))))))) ((_ re.capture 4) (re.++ (str.to.re "G") (re.++ (str.to.re "I") (re.++ (str.to.re "R") (re.++ (str.to.re " ") (re.++ (str.to.re "0") (re.++ (str.to.re "A") (str.to.re "A"))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.union ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.++ (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (re.range "A" "Z")))))) (re.++ (str.to.re " ") ((_ re.capture 3) (re.++ (re.range "0" "9") ((_ re.loop 0 2) (re.range "A" "Z"))))))) ((_ re.capture 4) (re.++ (str.to.re "G") (re.++ (str.to.re "I") (re.++ (str.to.re "R") (re.++ (str.to.re " ") (re.++ (str.to.re "0") (re.++ (str.to.re "A") (str.to.re "A"))))))))) re.all))) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.union ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.++ (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (re.range "A" "Z")))))) (re.++ (str.to.re " ") ((_ re.capture 3) (re.++ (re.range "0" "9") ((_ re.loop 0 2) (re.range "A" "Z"))))))) ((_ re.capture 4) (re.++ (str.to.re "G") (re.++ (str.to.re "I") (re.++ (str.to.re "R") (re.++ (str.to.re " ") (re.++ (str.to.re "0") (re.++ (str.to.re "A") (str.to.re "A"))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.++ (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (re.range "A" "Z")))))) (re.++ (str.to.re " ") ((_ re.capture 3) (re.++ (re.range "0" "9") ((_ re.loop 0 2) (re.range "A" "Z"))))))) ((_ re.capture 4) (re.++ (str.to.re "G") (re.++ (str.to.re "I") (re.++ (str.to.re "R") (re.++ (str.to.re " ") (re.++ (str.to.re "0") (re.++ (str.to.re "A") (str.to.re "A"))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.union ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.++ (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (re.range "A" "Z")))))) (re.++ (str.to.re " ") ((_ re.capture 3) (re.++ (re.range "0" "9") ((_ re.loop 0 2) (re.range "A" "Z"))))))) ((_ re.capture 4) (re.++ (str.to.re "G") (re.++ (str.to.re "I") (re.++ (str.to.re "R") (re.++ (str.to.re " ") (re.++ (str.to.re "0") (re.++ (str.to.re "A") (str.to.re "A"))))))))) re.all))) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.union ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.++ (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (re.range "A" "Z")))))) (re.++ (str.to.re " ") ((_ re.capture 3) (re.++ (re.range "0" "9") ((_ re.loop 0 2) (re.range "A" "Z"))))))) ((_ re.capture 4) (re.++ (str.to.re "G") (re.++ (str.to.re "I") (re.++ (str.to.re "R") (re.++ (str.to.re " ") (re.++ (str.to.re "0") (re.++ (str.to.re "A") (str.to.re "A"))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.++ (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (re.range "A" "Z")))))) (re.++ (str.to.re " ") ((_ re.capture 3) (re.++ (re.range "0" "9") ((_ re.loop 0 2) (re.range "A" "Z"))))))) ((_ re.capture 4) (re.++ (str.to.re "G") (re.++ (str.to.re "I") (re.++ (str.to.re "R") (re.++ (str.to.re " ") (re.++ (str.to.re "0") (re.++ (str.to.re "A") (str.to.re "A"))))))))) re.all))))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.union ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.++ (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (re.range "A" "Z")))))) (re.++ (str.to.re " ") ((_ re.capture 3) (re.++ (re.range "0" "9") ((_ re.loop 0 2) (re.range "A" "Z"))))))) ((_ re.capture 4) (re.++ (str.to.re "G") (re.++ (str.to.re "I") (re.++ (str.to.re "R") (re.++ (str.to.re " ") (re.++ (str.to.re "0") (re.++ (str.to.re "A") (str.to.re "A"))))))))) re.all))) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.++ (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (re.range "A" "Z")))))) (re.++ (str.to.re " ") ((_ re.capture 3) (re.++ (re.range "0" "9") ((_ re.loop 0 2) (re.range "A" "Z"))))))) ((_ re.capture 4) (re.++ (str.to.re "G") (re.++ (str.to.re "I") (re.++ (str.to.re "R") (re.++ (str.to.re " ") (re.++ (str.to.re "0") (re.++ (str.to.re "A") (str.to.re "A"))))))))) re.all)))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
