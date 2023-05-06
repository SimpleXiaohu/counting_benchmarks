
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "b") (re.union (str.to.re "c") (re.union (re.range "e" "r") (re.union (re.range "t" "x") (re.union (str.to.re "B") (re.union (str.to.re "C") (re.union (re.range "E" "R") (re.range "T" "X"))))))))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "b") (re.union (str.to.re "c") (re.union (re.range "e" "r") (re.union (re.range "t" "x") (re.union (str.to.re "B") (re.union (str.to.re "C") (re.union (re.range "E" "R") (re.range "T" "X"))))))))))))))) re.all))) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "b") (re.union (str.to.re "c") (re.union (re.range "e" "r") (re.union (re.range "t" "x") (re.union (str.to.re "B") (re.union (str.to.re "C") (re.union (re.range "E" "R") (re.range "T" "X"))))))))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "b") (re.union (str.to.re "c") (re.union (re.range "e" "r") (re.union (re.range "t" "x") (re.union (str.to.re "B") (re.union (str.to.re "C") (re.union (re.range "E" "R") (re.range "T" "X"))))))))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "b") (re.union (str.to.re "c") (re.union (re.range "e" "r") (re.union (re.range "t" "x") (re.union (str.to.re "B") (re.union (str.to.re "C") (re.union (re.range "E" "R") (re.range "T" "X"))))))))))))))) re.all))) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "b") (re.union (str.to.re "c") (re.union (re.range "e" "r") (re.union (re.range "t" "x") (re.union (str.to.re "B") (re.union (str.to.re "C") (re.union (re.range "E" "R") (re.range "T" "X"))))))))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "b") (re.union (str.to.re "c") (re.union (re.range "e" "r") (re.union (re.range "t" "x") (re.union (str.to.re "B") (re.union (str.to.re "C") (re.union (re.range "E" "R") (re.range "T" "X"))))))))))))))) re.all))))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "b") (re.union (str.to.re "c") (re.union (re.range "e" "r") (re.union (re.range "t" "x") (re.union (str.to.re "B") (re.union (str.to.re "C") (re.union (re.range "E" "R") (re.range "T" "X"))))))))))))))) re.all))) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) (re.++ (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "b") (re.union (str.to.re "c") (re.union (re.range "e" "r") (re.union (re.range "t" "x") (re.union (str.to.re "B") (re.union (str.to.re "C") (re.union (re.range "E" "R") (re.range "T" "X"))))))))))))))) re.all)))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
