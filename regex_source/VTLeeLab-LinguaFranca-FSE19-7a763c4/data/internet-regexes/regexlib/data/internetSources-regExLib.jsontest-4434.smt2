
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.union (re.range "A" "H") (re.range "J" "M"))) (re.++ (re.union (str.to.re "B") (str.to.re "R")) (re.range "A" "Y"))) (re.++ (str.to.re "C") (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "V"))))) (re.++ (re.union (str.to.re "E") (re.union (str.to.re "M") (re.union (str.to.re "O") (str.to.re "V")))) (re.range "A" "Y"))) (re.++ (str.to.re "G") (re.union (re.range "A" "H") (re.range "J" "O")))) (re.++ (re.union (str.to.re "D") (re.union (str.to.re "F") (re.union (str.to.re "H") (re.union (str.to.re "K") (re.union (str.to.re "L") (re.union (str.to.re "P") (re.union (str.to.re "S") (re.union (str.to.re "W") (str.to.re "Y"))))))))) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))) (re.++ (str.to.re "M") (re.++ (str.to.re "A") (str.to.re "N")))) (re.++ (str.to.re "N") (re.union (re.range "A" "E") (re.union (str.to.re "G") (re.union (str.to.re "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))))) (re.++ (str.to.re "X") (re.range "A" "F")))) (str.to.re ""))) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "0") (re.union (str.to.re "0") (re.range "2" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9")))) ((_ re.loop 0 3) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.union (str.to.re "-") (re.range "R" "Z")))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.union (re.range "A" "H") (re.range "J" "M"))) (re.++ (re.union (str.to.re "B") (str.to.re "R")) (re.range "A" "Y"))) (re.++ (str.to.re "C") (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "V"))))) (re.++ (re.union (str.to.re "E") (re.union (str.to.re "M") (re.union (str.to.re "O") (str.to.re "V")))) (re.range "A" "Y"))) (re.++ (str.to.re "G") (re.union (re.range "A" "H") (re.range "J" "O")))) (re.++ (re.union (str.to.re "D") (re.union (str.to.re "F") (re.union (str.to.re "H") (re.union (str.to.re "K") (re.union (str.to.re "L") (re.union (str.to.re "P") (re.union (str.to.re "S") (re.union (str.to.re "W") (str.to.re "Y"))))))))) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))) (re.++ (str.to.re "M") (re.++ (str.to.re "A") (str.to.re "N")))) (re.++ (str.to.re "N") (re.union (re.range "A" "E") (re.union (str.to.re "G") (re.union (str.to.re "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))))) (re.++ (str.to.re "X") (re.range "A" "F")))) (str.to.re ""))) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "0") (re.union (str.to.re "0") (re.range "2" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9")))) ((_ re.loop 0 3) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.union (str.to.re "-") (re.range "R" "Z")))))))) re.end-anchor)) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.union (re.range "A" "H") (re.range "J" "M"))) (re.++ (re.union (str.to.re "B") (str.to.re "R")) (re.range "A" "Y"))) (re.++ (str.to.re "C") (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "V"))))) (re.++ (re.union (str.to.re "E") (re.union (str.to.re "M") (re.union (str.to.re "O") (str.to.re "V")))) (re.range "A" "Y"))) (re.++ (str.to.re "G") (re.union (re.range "A" "H") (re.range "J" "O")))) (re.++ (re.union (str.to.re "D") (re.union (str.to.re "F") (re.union (str.to.re "H") (re.union (str.to.re "K") (re.union (str.to.re "L") (re.union (str.to.re "P") (re.union (str.to.re "S") (re.union (str.to.re "W") (str.to.re "Y"))))))))) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))) (re.++ (str.to.re "M") (re.++ (str.to.re "A") (str.to.re "N")))) (re.++ (str.to.re "N") (re.union (re.range "A" "E") (re.union (str.to.re "G") (re.union (str.to.re "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))))) (re.++ (str.to.re "X") (re.range "A" "F")))) (str.to.re ""))) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "0") (re.union (str.to.re "0") (re.range "2" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9")))) ((_ re.loop 0 3) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.union (str.to.re "-") (re.range "R" "Z")))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.union (re.range "A" "H") (re.range "J" "M"))) (re.++ (re.union (str.to.re "B") (str.to.re "R")) (re.range "A" "Y"))) (re.++ (str.to.re "C") (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "V"))))) (re.++ (re.union (str.to.re "E") (re.union (str.to.re "M") (re.union (str.to.re "O") (str.to.re "V")))) (re.range "A" "Y"))) (re.++ (str.to.re "G") (re.union (re.range "A" "H") (re.range "J" "O")))) (re.++ (re.union (str.to.re "D") (re.union (str.to.re "F") (re.union (str.to.re "H") (re.union (str.to.re "K") (re.union (str.to.re "L") (re.union (str.to.re "P") (re.union (str.to.re "S") (re.union (str.to.re "W") (str.to.re "Y"))))))))) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))) (re.++ (str.to.re "M") (re.++ (str.to.re "A") (str.to.re "N")))) (re.++ (str.to.re "N") (re.union (re.range "A" "E") (re.union (str.to.re "G") (re.union (str.to.re "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))))) (re.++ (str.to.re "X") (re.range "A" "F")))) (str.to.re ""))) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "0") (re.union (str.to.re "0") (re.range "2" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9")))) ((_ re.loop 0 3) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.union (str.to.re "-") (re.range "R" "Z")))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.union (re.range "A" "H") (re.range "J" "M"))) (re.++ (re.union (str.to.re "B") (str.to.re "R")) (re.range "A" "Y"))) (re.++ (str.to.re "C") (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "V"))))) (re.++ (re.union (str.to.re "E") (re.union (str.to.re "M") (re.union (str.to.re "O") (str.to.re "V")))) (re.range "A" "Y"))) (re.++ (str.to.re "G") (re.union (re.range "A" "H") (re.range "J" "O")))) (re.++ (re.union (str.to.re "D") (re.union (str.to.re "F") (re.union (str.to.re "H") (re.union (str.to.re "K") (re.union (str.to.re "L") (re.union (str.to.re "P") (re.union (str.to.re "S") (re.union (str.to.re "W") (str.to.re "Y"))))))))) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))) (re.++ (str.to.re "M") (re.++ (str.to.re "A") (str.to.re "N")))) (re.++ (str.to.re "N") (re.union (re.range "A" "E") (re.union (str.to.re "G") (re.union (str.to.re "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))))) (re.++ (str.to.re "X") (re.range "A" "F")))) (str.to.re ""))) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "0") (re.union (str.to.re "0") (re.range "2" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9")))) ((_ re.loop 0 3) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.union (str.to.re "-") (re.range "R" "Z")))))))) re.end-anchor)) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.union (re.range "A" "H") (re.range "J" "M"))) (re.++ (re.union (str.to.re "B") (str.to.re "R")) (re.range "A" "Y"))) (re.++ (str.to.re "C") (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "V"))))) (re.++ (re.union (str.to.re "E") (re.union (str.to.re "M") (re.union (str.to.re "O") (str.to.re "V")))) (re.range "A" "Y"))) (re.++ (str.to.re "G") (re.union (re.range "A" "H") (re.range "J" "O")))) (re.++ (re.union (str.to.re "D") (re.union (str.to.re "F") (re.union (str.to.re "H") (re.union (str.to.re "K") (re.union (str.to.re "L") (re.union (str.to.re "P") (re.union (str.to.re "S") (re.union (str.to.re "W") (str.to.re "Y"))))))))) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))) (re.++ (str.to.re "M") (re.++ (str.to.re "A") (str.to.re "N")))) (re.++ (str.to.re "N") (re.union (re.range "A" "E") (re.union (str.to.re "G") (re.union (str.to.re "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))))) (re.++ (str.to.re "X") (re.range "A" "F")))) (str.to.re ""))) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "0") (re.union (str.to.re "0") (re.range "2" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9")))) ((_ re.loop 0 3) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.union (str.to.re "-") (re.range "R" "Z")))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.union (re.range "A" "H") (re.range "J" "M"))) (re.++ (re.union (str.to.re "B") (str.to.re "R")) (re.range "A" "Y"))) (re.++ (str.to.re "C") (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "V"))))) (re.++ (re.union (str.to.re "E") (re.union (str.to.re "M") (re.union (str.to.re "O") (str.to.re "V")))) (re.range "A" "Y"))) (re.++ (str.to.re "G") (re.union (re.range "A" "H") (re.range "J" "O")))) (re.++ (re.union (str.to.re "D") (re.union (str.to.re "F") (re.union (str.to.re "H") (re.union (str.to.re "K") (re.union (str.to.re "L") (re.union (str.to.re "P") (re.union (str.to.re "S") (re.union (str.to.re "W") (str.to.re "Y"))))))))) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))) (re.++ (str.to.re "M") (re.++ (str.to.re "A") (str.to.re "N")))) (re.++ (str.to.re "N") (re.union (re.range "A" "E") (re.union (str.to.re "G") (re.union (str.to.re "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))))) (re.++ (str.to.re "X") (re.range "A" "F")))) (str.to.re ""))) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "0") (re.union (str.to.re "0") (re.range "2" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9")))) ((_ re.loop 0 3) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.union (str.to.re "-") (re.range "R" "Z")))))))) re.end-anchor)))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.union (re.range "A" "H") (re.range "J" "M"))) (re.++ (re.union (str.to.re "B") (str.to.re "R")) (re.range "A" "Y"))) (re.++ (str.to.re "C") (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "V"))))) (re.++ (re.union (str.to.re "E") (re.union (str.to.re "M") (re.union (str.to.re "O") (str.to.re "V")))) (re.range "A" "Y"))) (re.++ (str.to.re "G") (re.union (re.range "A" "H") (re.range "J" "O")))) (re.++ (re.union (str.to.re "D") (re.union (str.to.re "F") (re.union (str.to.re "H") (re.union (str.to.re "K") (re.union (str.to.re "L") (re.union (str.to.re "P") (re.union (str.to.re "S") (re.union (str.to.re "W") (str.to.re "Y"))))))))) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))) (re.++ (str.to.re "M") (re.++ (str.to.re "A") (str.to.re "N")))) (re.++ (str.to.re "N") (re.union (re.range "A" "E") (re.union (str.to.re "G") (re.union (str.to.re "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))))) (re.++ (str.to.re "X") (re.range "A" "F")))) (str.to.re ""))) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "0") (re.union (str.to.re "0") (re.range "2" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9")))) ((_ re.loop 0 3) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.union (str.to.re "-") (re.range "R" "Z")))))))) re.end-anchor)) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to.re "A") (re.union (re.range "A" "H") (re.range "J" "M"))) (re.++ (re.union (str.to.re "B") (str.to.re "R")) (re.range "A" "Y"))) (re.++ (str.to.re "C") (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "V"))))) (re.++ (re.union (str.to.re "E") (re.union (str.to.re "M") (re.union (str.to.re "O") (str.to.re "V")))) (re.range "A" "Y"))) (re.++ (str.to.re "G") (re.union (re.range "A" "H") (re.range "J" "O")))) (re.++ (re.union (str.to.re "D") (re.union (str.to.re "F") (re.union (str.to.re "H") (re.union (str.to.re "K") (re.union (str.to.re "L") (re.union (str.to.re "P") (re.union (str.to.re "S") (re.union (str.to.re "W") (str.to.re "Y"))))))))) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))) (re.++ (str.to.re "M") (re.++ (str.to.re "A") (str.to.re "N")))) (re.++ (str.to.re "N") (re.union (re.range "A" "E") (re.union (str.to.re "G") (re.union (str.to.re "H") (re.union (re.range "J" "P") (re.range "R" "Y"))))))) (re.++ (str.to.re "X") (re.range "A" "F")))) (str.to.re ""))) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "0") (re.union (str.to.re "0") (re.range "2" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9")))) ((_ re.loop 0 3) (re.union (re.range "A" "H") (re.union (re.range "J" "P") (re.union (str.to.re "-") (re.range "R" "Z")))))))) re.end-anchor))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)