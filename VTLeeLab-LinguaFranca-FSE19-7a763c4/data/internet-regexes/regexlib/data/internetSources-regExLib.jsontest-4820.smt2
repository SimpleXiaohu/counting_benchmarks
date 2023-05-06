
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re " ")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{21}" "\u{26}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{28}" "\u{2c}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{2e}" "\u{40}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{5b}" "\u{60}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{7b}" "\u{ac}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{ae}" "\u{bf}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{f7}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{fe}"))))))))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re " ")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{21}" "\u{26}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{28}" "\u{2c}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{2e}" "\u{40}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{5b}" "\u{60}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{7b}" "\u{ac}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{ae}" "\u{bf}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{f7}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{fe}"))))))))))))) re.end-anchor)) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re " ")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{21}" "\u{26}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{28}" "\u{2c}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{2e}" "\u{40}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{5b}" "\u{60}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{7b}" "\u{ac}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{ae}" "\u{bf}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{f7}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{fe}"))))))))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re " ")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{21}" "\u{26}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{28}" "\u{2c}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{2e}" "\u{40}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{5b}" "\u{60}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{7b}" "\u{ac}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{ae}" "\u{bf}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{f7}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{fe}"))))))))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re " ")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{21}" "\u{26}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{28}" "\u{2c}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{2e}" "\u{40}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{5b}" "\u{60}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{7b}" "\u{ac}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{ae}" "\u{bf}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{f7}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{fe}"))))))))))))) re.end-anchor)) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re " ")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{21}" "\u{26}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{28}" "\u{2c}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{2e}" "\u{40}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{5b}" "\u{60}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{7b}" "\u{ac}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{ae}" "\u{bf}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{f7}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{fe}"))))))))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re " ")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{21}" "\u{26}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{28}" "\u{2c}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{2e}" "\u{40}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{5b}" "\u{60}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{7b}" "\u{ac}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{ae}" "\u{bf}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{f7}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{fe}"))))))))))))) re.end-anchor)))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re " ")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{21}" "\u{26}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{28}" "\u{2c}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{2e}" "\u{40}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{5b}" "\u{60}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{7b}" "\u{ac}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{ae}" "\u{bf}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{f7}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{fe}"))))))))))))) re.end-anchor)) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.++ re.begin-anchor ((_ re.capture 1) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re " ")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{21}" "\u{26}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{28}" "\u{2c}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{2e}" "\u{40}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{5b}" "\u{60}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{7b}" "\u{ac}")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "\u{ae}" "\u{bf}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{f7}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{fe}"))))))))))))) re.end-anchor))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
