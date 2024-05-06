
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) ((_ re.loop 0 2) (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "d")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "a")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "s")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "D")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "A")) (re.diff (re.range "\x01" "\xff") (str.to.re "S"))))))))))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) ((_ re.loop 0 2) (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "d")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "a")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "s")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "D")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "A")) (re.diff (re.range "\x01" "\xff") (str.to.re "S"))))))))))))))) re.end-anchor)) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) ((_ re.loop 0 2) (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "d")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "a")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "s")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "D")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "A")) (re.diff (re.range "\x01" "\xff") (str.to.re "S"))))))))))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) ((_ re.loop 0 2) (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "d")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "a")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "s")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "D")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "A")) (re.diff (re.range "\x01" "\xff") (str.to.re "S"))))))))))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) ((_ re.loop 0 2) (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "d")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "a")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "s")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "D")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "A")) (re.diff (re.range "\x01" "\xff") (str.to.re "S"))))))))))))))) re.end-anchor)) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) ((_ re.loop 0 2) (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "d")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "a")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "s")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "D")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "A")) (re.diff (re.range "\x01" "\xff") (str.to.re "S"))))))))))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) ((_ re.loop 0 2) (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "d")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "a")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "s")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "D")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "A")) (re.diff (re.range "\x01" "\xff") (str.to.re "S"))))))))))))))) re.end-anchor)))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) ((_ re.loop 0 2) (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "d")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "a")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "s")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "D")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "A")) (re.diff (re.range "\x01" "\xff") (str.to.re "S"))))))))))))))) re.end-anchor)) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to.re " ")) ((_ re.capture 1) (re.union ((_ re.capture 2) ((_ re.loop 0 2) (re.union (re.range "a" "r") (re.union (re.range "t" "z") (re.union (re.range "A" "R") (re.range "T" "Z")))))) ((_ re.capture 3) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "d")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "a")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "s")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "D")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "A")) (re.diff (re.range "\x01" "\xff") (str.to.re "S"))))))))))))))) re.end-anchor))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
