
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (re.union (str.to.re "1") (str.to.re "2")))))) (re.++ ((_ re.loop 1 2) ((_ re.capture 3) (re.++ (str.to.re ":") (re.++ (re.range "0" "5") (re.range "0" "9"))))) ((_ re.capture 4) (re.++ (str.to.re " ") (re.++ (re.union (str.to.re "A") (re.union (str.to.re "a") (re.union (str.to.re "P") (str.to.re "p")))) (re.union (str.to.re "M") (str.to.re "m"))))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (re.union (str.to.re "1") (str.to.re "2")))))) (re.++ ((_ re.loop 1 2) ((_ re.capture 3) (re.++ (str.to.re ":") (re.++ (re.range "0" "5") (re.range "0" "9"))))) ((_ re.capture 4) (re.++ (str.to.re " ") (re.++ (re.union (str.to.re "A") (re.union (str.to.re "a") (re.union (str.to.re "P") (str.to.re "p")))) (re.union (str.to.re "M") (str.to.re "m"))))))))) re.end-anchor)) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (re.union (str.to.re "1") (str.to.re "2")))))) (re.++ ((_ re.loop 1 2) ((_ re.capture 3) (re.++ (str.to.re ":") (re.++ (re.range "0" "5") (re.range "0" "9"))))) ((_ re.capture 4) (re.++ (str.to.re " ") (re.++ (re.union (str.to.re "A") (re.union (str.to.re "a") (re.union (str.to.re "P") (str.to.re "p")))) (re.union (str.to.re "M") (str.to.re "m"))))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (re.union (str.to.re "1") (str.to.re "2")))))) (re.++ ((_ re.loop 1 2) ((_ re.capture 3) (re.++ (str.to.re ":") (re.++ (re.range "0" "5") (re.range "0" "9"))))) ((_ re.capture 4) (re.++ (str.to.re " ") (re.++ (re.union (str.to.re "A") (re.union (str.to.re "a") (re.union (str.to.re "P") (str.to.re "p")))) (re.union (str.to.re "M") (str.to.re "m"))))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (re.union (str.to.re "1") (str.to.re "2")))))) (re.++ ((_ re.loop 1 2) ((_ re.capture 3) (re.++ (str.to.re ":") (re.++ (re.range "0" "5") (re.range "0" "9"))))) ((_ re.capture 4) (re.++ (str.to.re " ") (re.++ (re.union (str.to.re "A") (re.union (str.to.re "a") (re.union (str.to.re "P") (str.to.re "p")))) (re.union (str.to.re "M") (str.to.re "m"))))))))) re.end-anchor)) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (re.union (str.to.re "1") (str.to.re "2")))))) (re.++ ((_ re.loop 1 2) ((_ re.capture 3) (re.++ (str.to.re ":") (re.++ (re.range "0" "5") (re.range "0" "9"))))) ((_ re.capture 4) (re.++ (str.to.re " ") (re.++ (re.union (str.to.re "A") (re.union (str.to.re "a") (re.union (str.to.re "P") (str.to.re "p")))) (re.union (str.to.re "M") (str.to.re "m"))))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (re.union (str.to.re "1") (str.to.re "2")))))) (re.++ ((_ re.loop 1 2) ((_ re.capture 3) (re.++ (str.to.re ":") (re.++ (re.range "0" "5") (re.range "0" "9"))))) ((_ re.capture 4) (re.++ (str.to.re " ") (re.++ (re.union (str.to.re "A") (re.union (str.to.re "a") (re.union (str.to.re "P") (str.to.re "p")))) (re.union (str.to.re "M") (str.to.re "m"))))))))) re.end-anchor)))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (re.union (str.to.re "1") (str.to.re "2")))))) (re.++ ((_ re.loop 1 2) ((_ re.capture 3) (re.++ (str.to.re ":") (re.++ (re.range "0" "5") (re.range "0" "9"))))) ((_ re.capture 4) (re.++ (str.to.re " ") (re.++ (re.union (str.to.re "A") (re.union (str.to.re "a") (re.union (str.to.re "P") (str.to.re "p")))) (re.union (str.to.re "M") (str.to.re "m"))))))))) re.end-anchor)) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (re.union (str.to.re "1") (str.to.re "2")))))) (re.++ ((_ re.loop 1 2) ((_ re.capture 3) (re.++ (str.to.re ":") (re.++ (re.range "0" "5") (re.range "0" "9"))))) ((_ re.capture 4) (re.++ (str.to.re " ") (re.++ (re.union (str.to.re "A") (re.union (str.to.re "a") (re.union (str.to.re "P") (str.to.re "p")))) (re.union (str.to.re "M") (str.to.re "m"))))))))) re.end-anchor))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
