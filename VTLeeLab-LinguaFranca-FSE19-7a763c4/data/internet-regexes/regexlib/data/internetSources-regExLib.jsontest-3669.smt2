
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "A") (re.++ ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9")))) ((_ re.capture 3) (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") ((_ re.loop 0 1) (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 0 1) (str.to.re "\u{20}")) (re.++ (re.range "0" "9") (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "Z")))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "A") (re.++ ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9")))) ((_ re.capture 3) (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") ((_ re.loop 0 1) (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 0 1) (str.to.re "\u{20}")) (re.++ (re.range "0" "9") (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "Z")))))) re.all))) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "A") (re.++ ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9")))) ((_ re.capture 3) (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") ((_ re.loop 0 1) (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 0 1) (str.to.re "\u{20}")) (re.++ (re.range "0" "9") (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "Z")))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "A") (re.++ ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9")))) ((_ re.capture 3) (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") ((_ re.loop 0 1) (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 0 1) (str.to.re "\u{20}")) (re.++ (re.range "0" "9") (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "Z")))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "A") (re.++ ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9")))) ((_ re.capture 3) (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") ((_ re.loop 0 1) (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 0 1) (str.to.re "\u{20}")) (re.++ (re.range "0" "9") (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "Z")))))) re.all))) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "A") (re.++ ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9")))) ((_ re.capture 3) (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") ((_ re.loop 0 1) (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 0 1) (str.to.re "\u{20}")) (re.++ (re.range "0" "9") (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "Z")))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "A") (re.++ ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9")))) ((_ re.capture 3) (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") ((_ re.loop 0 1) (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 0 1) (str.to.re "\u{20}")) (re.++ (re.range "0" "9") (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "Z")))))) re.all))))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "A") (re.++ ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9")))) ((_ re.capture 3) (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") ((_ re.loop 0 1) (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 0 1) (str.to.re "\u{20}")) (re.++ (re.range "0" "9") (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "Z")))))) re.all))) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "A") (re.++ ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9")))) ((_ re.capture 3) (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") ((_ re.loop 0 1) (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 0 1) (str.to.re "\u{20}")) (re.++ (re.range "0" "9") (re.++ ((_ re.loop 0 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "Z")))))) re.all)))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
