
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 1) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 2) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) ((_ re.capture 3) ((_ re.loop 0 4) (re.range "0" "9")))))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 1) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 2) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) ((_ re.capture 3) ((_ re.loop 0 4) (re.range "0" "9")))))))))) re.end-anchor)) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 1) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 2) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) ((_ re.capture 3) ((_ re.loop 0 4) (re.range "0" "9")))))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 1) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 2) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) ((_ re.capture 3) ((_ re.loop 0 4) (re.range "0" "9")))))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 1) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 2) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) ((_ re.capture 3) ((_ re.loop 0 4) (re.range "0" "9")))))))))) re.end-anchor)) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 1) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 2) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) ((_ re.capture 3) ((_ re.loop 0 4) (re.range "0" "9")))))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 1) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 2) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) ((_ re.capture 3) ((_ re.loop 0 4) (re.range "0" "9")))))))))) re.end-anchor)))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 1) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 2) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) ((_ re.capture 3) ((_ re.loop 0 4) (re.range "0" "9")))))))))) re.end-anchor)) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 1) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 2) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) ((_ re.capture 3) ((_ re.loop 0 4) (re.range "0" "9")))))))))) re.end-anchor))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
