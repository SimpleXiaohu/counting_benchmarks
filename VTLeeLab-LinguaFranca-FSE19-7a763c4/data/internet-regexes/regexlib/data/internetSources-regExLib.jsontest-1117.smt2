
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ (re.++ (re.*? re.allchar) (re.+ ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.++ (str.to.re "U") (str.to.re "X"))) (re.++ (str.to.re "P") (re.++ (str.to.re "R") (str.to.re "N")))) (re.++ (str.to.re "N") (re.++ (str.to.re "U") (str.to.re "L")))) (re.++ (str.to.re "C") (re.++ (str.to.re "O") (re.++ (str.to.re "M") (re.range "0" "9"))))) (re.++ (str.to.re "L") (re.++ (str.to.re "P") (re.++ (str.to.re "T") (re.range "0" "9")))))))) (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ (re.++ (re.*? re.allchar) (re.+ ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.++ (str.to.re "U") (str.to.re "X"))) (re.++ (str.to.re "P") (re.++ (str.to.re "R") (str.to.re "N")))) (re.++ (str.to.re "N") (re.++ (str.to.re "U") (str.to.re "L")))) (re.++ (str.to.re "C") (re.++ (str.to.re "O") (re.++ (str.to.re "M") (re.range "0" "9"))))) (re.++ (str.to.re "L") (re.++ (str.to.re "P") (re.++ (str.to.re "T") (re.range "0" "9")))))))) (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) re.end-anchor)) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ (re.++ (re.*? re.allchar) (re.+ ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.++ (str.to.re "U") (str.to.re "X"))) (re.++ (str.to.re "P") (re.++ (str.to.re "R") (str.to.re "N")))) (re.++ (str.to.re "N") (re.++ (str.to.re "U") (str.to.re "L")))) (re.++ (str.to.re "C") (re.++ (str.to.re "O") (re.++ (str.to.re "M") (re.range "0" "9"))))) (re.++ (str.to.re "L") (re.++ (str.to.re "P") (re.++ (str.to.re "T") (re.range "0" "9")))))))) (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ (re.++ (re.*? re.allchar) (re.+ ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.++ (str.to.re "U") (str.to.re "X"))) (re.++ (str.to.re "P") (re.++ (str.to.re "R") (str.to.re "N")))) (re.++ (str.to.re "N") (re.++ (str.to.re "U") (str.to.re "L")))) (re.++ (str.to.re "C") (re.++ (str.to.re "O") (re.++ (str.to.re "M") (re.range "0" "9"))))) (re.++ (str.to.re "L") (re.++ (str.to.re "P") (re.++ (str.to.re "T") (re.range "0" "9")))))))) (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ (re.++ (re.*? re.allchar) (re.+ ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.++ (str.to.re "U") (str.to.re "X"))) (re.++ (str.to.re "P") (re.++ (str.to.re "R") (str.to.re "N")))) (re.++ (str.to.re "N") (re.++ (str.to.re "U") (str.to.re "L")))) (re.++ (str.to.re "C") (re.++ (str.to.re "O") (re.++ (str.to.re "M") (re.range "0" "9"))))) (re.++ (str.to.re "L") (re.++ (str.to.re "P") (re.++ (str.to.re "T") (re.range "0" "9")))))))) (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) re.end-anchor)) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ (re.++ (re.*? re.allchar) (re.+ ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.++ (str.to.re "U") (str.to.re "X"))) (re.++ (str.to.re "P") (re.++ (str.to.re "R") (str.to.re "N")))) (re.++ (str.to.re "N") (re.++ (str.to.re "U") (str.to.re "L")))) (re.++ (str.to.re "C") (re.++ (str.to.re "O") (re.++ (str.to.re "M") (re.range "0" "9"))))) (re.++ (str.to.re "L") (re.++ (str.to.re "P") (re.++ (str.to.re "T") (re.range "0" "9")))))))) (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ (re.++ (re.*? re.allchar) (re.+ ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.++ (str.to.re "U") (str.to.re "X"))) (re.++ (str.to.re "P") (re.++ (str.to.re "R") (str.to.re "N")))) (re.++ (str.to.re "N") (re.++ (str.to.re "U") (str.to.re "L")))) (re.++ (str.to.re "C") (re.++ (str.to.re "O") (re.++ (str.to.re "M") (re.range "0" "9"))))) (re.++ (str.to.re "L") (re.++ (str.to.re "P") (re.++ (str.to.re "T") (re.range "0" "9")))))))) (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) re.end-anchor)))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ (re.++ (re.*? re.allchar) (re.+ ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.++ (str.to.re "U") (str.to.re "X"))) (re.++ (str.to.re "P") (re.++ (str.to.re "R") (str.to.re "N")))) (re.++ (str.to.re "N") (re.++ (str.to.re "U") (str.to.re "L")))) (re.++ (str.to.re "C") (re.++ (str.to.re "O") (re.++ (str.to.re "M") (re.range "0" "9"))))) (re.++ (str.to.re "L") (re.++ (str.to.re "P") (re.++ (str.to.re "T") (re.range "0" "9")))))))) (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) re.end-anchor)) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.++ (re.++ (re.*? re.allchar) (re.+ ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.++ (str.to.re "U") (str.to.re "X"))) (re.++ (str.to.re "P") (re.++ (str.to.re "R") (str.to.re "N")))) (re.++ (str.to.re "N") (re.++ (str.to.re "U") (str.to.re "L")))) (re.++ (str.to.re "C") (re.++ (str.to.re "O") (re.++ (str.to.re "M") (re.range "0" "9"))))) (re.++ (str.to.re "L") (re.++ (str.to.re "P") (re.++ (str.to.re "T") (re.range "0" "9")))))))) (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) re.end-anchor))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
