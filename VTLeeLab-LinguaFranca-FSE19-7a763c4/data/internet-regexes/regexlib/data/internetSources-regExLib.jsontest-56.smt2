
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (str.to.re ":") (re.++ (str.to.re "/") (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ ((_ re.capture 2) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (str.to.re " ")))))))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (str.to.re ":") (re.++ (str.to.re "/") (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ ((_ re.capture 2) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (str.to.re " ")))))))))))))) re.all))) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (str.to.re ":") (re.++ (str.to.re "/") (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ ((_ re.capture 2) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (str.to.re " ")))))))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (str.to.re ":") (re.++ (str.to.re "/") (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ ((_ re.capture 2) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (str.to.re " ")))))))))))))) re.all))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (str.to.re ":") (re.++ (str.to.re "/") (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ ((_ re.capture 2) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (str.to.re " ")))))))))))))) re.all))) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (str.to.re ":") (re.++ (str.to.re "/") (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ ((_ re.capture 2) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (str.to.re " ")))))))))))))) re.all))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (str.to.re ":") (re.++ (str.to.re "/") (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ ((_ re.capture 2) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (str.to.re " ")))))))))))))) re.all))))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (str.to.re ":") (re.++ (str.to.re "/") (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ ((_ re.capture 2) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (str.to.re " ")))))))))))))) re.all))) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (str.to.re ":") (re.++ (str.to.re "/") (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ ((_ re.capture 2) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re ".")))) (re.++ (str.to.re ".") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (str.to.re " ")))))))))))))) re.all)))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
