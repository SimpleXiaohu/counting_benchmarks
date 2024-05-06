
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "a" "z")) ((_ re.capture 1) (re.++ (str.to.re "o") (re.++ ((_ re.capture 2) (re.union (str.to.re "i") (str.to.re "u"))) (re.++ ((_ re.capture 3) (re.union (re.union (re.union (re.union (str.to.re "n") (re.++ (re.opt ((_ re.capture 4) (str.to.re "v"))) (re.++ (str.to.re "r") (re.opt ((_ re.capture 5) (str.to.re "t")))))) (str.to.re "s")) (str.to.re "t")) (str.to.re "x"))) (re.opt ((_ re.capture 6) (re.++ (str.to.re "e") (re.opt ((_ re.capture 7) (str.to.re "s"))))))))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "a" "z")) ((_ re.capture 1) (re.++ (str.to.re "o") (re.++ ((_ re.capture 2) (re.union (str.to.re "i") (str.to.re "u"))) (re.++ ((_ re.capture 3) (re.union (re.union (re.union (re.union (str.to.re "n") (re.++ (re.opt ((_ re.capture 4) (str.to.re "v"))) (re.++ (str.to.re "r") (re.opt ((_ re.capture 5) (str.to.re "t")))))) (str.to.re "s")) (str.to.re "t")) (str.to.re "x"))) (re.opt ((_ re.capture 6) (re.++ (str.to.re "e") (re.opt ((_ re.capture 7) (str.to.re "s"))))))))))))) re.end-anchor)) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "a" "z")) ((_ re.capture 1) (re.++ (str.to.re "o") (re.++ ((_ re.capture 2) (re.union (str.to.re "i") (str.to.re "u"))) (re.++ ((_ re.capture 3) (re.union (re.union (re.union (re.union (str.to.re "n") (re.++ (re.opt ((_ re.capture 4) (str.to.re "v"))) (re.++ (str.to.re "r") (re.opt ((_ re.capture 5) (str.to.re "t")))))) (str.to.re "s")) (str.to.re "t")) (str.to.re "x"))) (re.opt ((_ re.capture 6) (re.++ (str.to.re "e") (re.opt ((_ re.capture 7) (str.to.re "s"))))))))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "a" "z")) ((_ re.capture 1) (re.++ (str.to.re "o") (re.++ ((_ re.capture 2) (re.union (str.to.re "i") (str.to.re "u"))) (re.++ ((_ re.capture 3) (re.union (re.union (re.union (re.union (str.to.re "n") (re.++ (re.opt ((_ re.capture 4) (str.to.re "v"))) (re.++ (str.to.re "r") (re.opt ((_ re.capture 5) (str.to.re "t")))))) (str.to.re "s")) (str.to.re "t")) (str.to.re "x"))) (re.opt ((_ re.capture 6) (re.++ (str.to.re "e") (re.opt ((_ re.capture 7) (str.to.re "s"))))))))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "a" "z")) ((_ re.capture 1) (re.++ (str.to.re "o") (re.++ ((_ re.capture 2) (re.union (str.to.re "i") (str.to.re "u"))) (re.++ ((_ re.capture 3) (re.union (re.union (re.union (re.union (str.to.re "n") (re.++ (re.opt ((_ re.capture 4) (str.to.re "v"))) (re.++ (str.to.re "r") (re.opt ((_ re.capture 5) (str.to.re "t")))))) (str.to.re "s")) (str.to.re "t")) (str.to.re "x"))) (re.opt ((_ re.capture 6) (re.++ (str.to.re "e") (re.opt ((_ re.capture 7) (str.to.re "s"))))))))))))) re.end-anchor)) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "a" "z")) ((_ re.capture 1) (re.++ (str.to.re "o") (re.++ ((_ re.capture 2) (re.union (str.to.re "i") (str.to.re "u"))) (re.++ ((_ re.capture 3) (re.union (re.union (re.union (re.union (str.to.re "n") (re.++ (re.opt ((_ re.capture 4) (str.to.re "v"))) (re.++ (str.to.re "r") (re.opt ((_ re.capture 5) (str.to.re "t")))))) (str.to.re "s")) (str.to.re "t")) (str.to.re "x"))) (re.opt ((_ re.capture 6) (re.++ (str.to.re "e") (re.opt ((_ re.capture 7) (str.to.re "s"))))))))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "a" "z")) ((_ re.capture 1) (re.++ (str.to.re "o") (re.++ ((_ re.capture 2) (re.union (str.to.re "i") (str.to.re "u"))) (re.++ ((_ re.capture 3) (re.union (re.union (re.union (re.union (str.to.re "n") (re.++ (re.opt ((_ re.capture 4) (str.to.re "v"))) (re.++ (str.to.re "r") (re.opt ((_ re.capture 5) (str.to.re "t")))))) (str.to.re "s")) (str.to.re "t")) (str.to.re "x"))) (re.opt ((_ re.capture 6) (re.++ (str.to.re "e") (re.opt ((_ re.capture 7) (str.to.re "s"))))))))))))) re.end-anchor)))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "a" "z")) ((_ re.capture 1) (re.++ (str.to.re "o") (re.++ ((_ re.capture 2) (re.union (str.to.re "i") (str.to.re "u"))) (re.++ ((_ re.capture 3) (re.union (re.union (re.union (re.union (str.to.re "n") (re.++ (re.opt ((_ re.capture 4) (str.to.re "v"))) (re.++ (str.to.re "r") (re.opt ((_ re.capture 5) (str.to.re "t")))))) (str.to.re "s")) (str.to.re "t")) (str.to.re "x"))) (re.opt ((_ re.capture 6) (re.++ (str.to.re "e") (re.opt ((_ re.capture 7) (str.to.re "s"))))))))))))) re.end-anchor)) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "a" "z")) ((_ re.capture 1) (re.++ (str.to.re "o") (re.++ ((_ re.capture 2) (re.union (str.to.re "i") (str.to.re "u"))) (re.++ ((_ re.capture 3) (re.union (re.union (re.union (re.union (str.to.re "n") (re.++ (re.opt ((_ re.capture 4) (str.to.re "v"))) (re.++ (str.to.re "r") (re.opt ((_ re.capture 5) (str.to.re "t")))))) (str.to.re "s")) (str.to.re "t")) (str.to.re "x"))) (re.opt ((_ re.capture 6) (re.++ (str.to.re "e") (re.opt ((_ re.capture 7) (str.to.re "s"))))))))))))) re.end-anchor))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
