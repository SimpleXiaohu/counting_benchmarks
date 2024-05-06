
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.* ((_ re.capture 1) (str.to.re " "))) (re.++ ((_ re.capture 2) (re.++ (re.opt (str.to.re "+")) (re.++ (re.opt ((_ re.capture 3) (str.to.re " "))) (re.++ (re.opt (str.to.re "(")) (re.++ (re.opt ((_ re.capture 4) (str.to.re " "))) (re.opt ((_ re.capture 5) ((_ re.loop 1 3) (re.range "0" "9"))))))))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 6) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 7) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 8) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 9) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 10) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 11) ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.* ((_ re.capture 12) (str.to.re " "))))))))))))))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.* ((_ re.capture 1) (str.to.re " "))) (re.++ ((_ re.capture 2) (re.++ (re.opt (str.to.re "+")) (re.++ (re.opt ((_ re.capture 3) (str.to.re " "))) (re.++ (re.opt (str.to.re "(")) (re.++ (re.opt ((_ re.capture 4) (str.to.re " "))) (re.opt ((_ re.capture 5) ((_ re.loop 1 3) (re.range "0" "9"))))))))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 6) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 7) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 8) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 9) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 10) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 11) ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.* ((_ re.capture 12) (str.to.re " "))))))))))))))))))) re.end-anchor)) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.* ((_ re.capture 1) (str.to.re " "))) (re.++ ((_ re.capture 2) (re.++ (re.opt (str.to.re "+")) (re.++ (re.opt ((_ re.capture 3) (str.to.re " "))) (re.++ (re.opt (str.to.re "(")) (re.++ (re.opt ((_ re.capture 4) (str.to.re " "))) (re.opt ((_ re.capture 5) ((_ re.loop 1 3) (re.range "0" "9"))))))))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 6) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 7) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 8) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 9) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 10) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 11) ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.* ((_ re.capture 12) (str.to.re " "))))))))))))))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.* ((_ re.capture 1) (str.to.re " "))) (re.++ ((_ re.capture 2) (re.++ (re.opt (str.to.re "+")) (re.++ (re.opt ((_ re.capture 3) (str.to.re " "))) (re.++ (re.opt (str.to.re "(")) (re.++ (re.opt ((_ re.capture 4) (str.to.re " "))) (re.opt ((_ re.capture 5) ((_ re.loop 1 3) (re.range "0" "9"))))))))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 6) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 7) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 8) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 9) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 10) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 11) ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.* ((_ re.capture 12) (str.to.re " "))))))))))))))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.* ((_ re.capture 1) (str.to.re " "))) (re.++ ((_ re.capture 2) (re.++ (re.opt (str.to.re "+")) (re.++ (re.opt ((_ re.capture 3) (str.to.re " "))) (re.++ (re.opt (str.to.re "(")) (re.++ (re.opt ((_ re.capture 4) (str.to.re " "))) (re.opt ((_ re.capture 5) ((_ re.loop 1 3) (re.range "0" "9"))))))))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 6) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 7) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 8) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 9) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 10) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 11) ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.* ((_ re.capture 12) (str.to.re " "))))))))))))))))))) re.end-anchor)) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.* ((_ re.capture 1) (str.to.re " "))) (re.++ ((_ re.capture 2) (re.++ (re.opt (str.to.re "+")) (re.++ (re.opt ((_ re.capture 3) (str.to.re " "))) (re.++ (re.opt (str.to.re "(")) (re.++ (re.opt ((_ re.capture 4) (str.to.re " "))) (re.opt ((_ re.capture 5) ((_ re.loop 1 3) (re.range "0" "9"))))))))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 6) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 7) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 8) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 9) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 10) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 11) ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.* ((_ re.capture 12) (str.to.re " "))))))))))))))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.* ((_ re.capture 1) (str.to.re " "))) (re.++ ((_ re.capture 2) (re.++ (re.opt (str.to.re "+")) (re.++ (re.opt ((_ re.capture 3) (str.to.re " "))) (re.++ (re.opt (str.to.re "(")) (re.++ (re.opt ((_ re.capture 4) (str.to.re " "))) (re.opt ((_ re.capture 5) ((_ re.loop 1 3) (re.range "0" "9"))))))))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 6) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 7) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 8) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 9) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 10) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 11) ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.* ((_ re.capture 12) (str.to.re " "))))))))))))))))))) re.end-anchor)))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.* ((_ re.capture 1) (str.to.re " "))) (re.++ ((_ re.capture 2) (re.++ (re.opt (str.to.re "+")) (re.++ (re.opt ((_ re.capture 3) (str.to.re " "))) (re.++ (re.opt (str.to.re "(")) (re.++ (re.opt ((_ re.capture 4) (str.to.re " "))) (re.opt ((_ re.capture 5) ((_ re.loop 1 3) (re.range "0" "9"))))))))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 6) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 7) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 8) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 9) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 10) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 11) ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.* ((_ re.capture 12) (str.to.re " "))))))))))))))))))) re.end-anchor)) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.* ((_ re.capture 1) (str.to.re " "))) (re.++ ((_ re.capture 2) (re.++ (re.opt (str.to.re "+")) (re.++ (re.opt ((_ re.capture 3) (str.to.re " "))) (re.++ (re.opt (str.to.re "(")) (re.++ (re.opt ((_ re.capture 4) (str.to.re " "))) (re.opt ((_ re.capture 5) ((_ re.loop 1 3) (re.range "0" "9"))))))))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 6) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 7) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 8) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 9) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.++ (re.opt ((_ re.capture 10) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "-")) (re.++ (str.to.re "_") (str.to.re " "))))) (re.++ (re.opt (str.to.re "(")) (re.++ ((_ re.capture 11) ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ (re.opt (str.to.re ")")) (re.* ((_ re.capture 12) (str.to.re " "))))))))))))))))))) re.end-anchor))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)