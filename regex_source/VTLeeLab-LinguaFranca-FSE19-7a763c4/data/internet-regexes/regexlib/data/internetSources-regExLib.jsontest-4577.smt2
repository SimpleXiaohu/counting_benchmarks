
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ ((_ re.capture 2) (re.opt (str.to.re "s"))) (re.++ (str.to.re ":") (re.++ (str.to.re "/") (str.to.re "/")))))))))) (re.++ (re.opt ((_ re.capture 3) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ (str.to.re "y") (re.++ (str.to.re "o") (re.++ (str.to.re "u") (re.++ (str.to.re "t") (re.++ (str.to.re "u") (re.++ (re.opt ((_ re.capture 4) (re.++ (str.to.re "b") (str.to.re "e")))) (re.++ (str.to.re ".") (re.++ (re.+ ((_ re.capture 5) (re.range "a" "z"))) (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 6) (re.++ (str.to.re "w") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ ((_ re.capture 7) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ ((_ re.capture 8) (re.union (str.to.re "?") (str.to.re "&"))) (re.++ (str.to.re "v") (str.to.re "="))))))))))) (re.++ ((_ re.capture 9) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.opt ((_ re.capture 10) (re.++ (str.to.re "&") (re.* ((_ re.capture 11) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))))))))))))))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ ((_ re.capture 2) (re.opt (str.to.re "s"))) (re.++ (str.to.re ":") (re.++ (str.to.re "/") (str.to.re "/")))))))))) (re.++ (re.opt ((_ re.capture 3) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ (str.to.re "y") (re.++ (str.to.re "o") (re.++ (str.to.re "u") (re.++ (str.to.re "t") (re.++ (str.to.re "u") (re.++ (re.opt ((_ re.capture 4) (re.++ (str.to.re "b") (str.to.re "e")))) (re.++ (str.to.re ".") (re.++ (re.+ ((_ re.capture 5) (re.range "a" "z"))) (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 6) (re.++ (str.to.re "w") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ ((_ re.capture 7) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ ((_ re.capture 8) (re.union (str.to.re "?") (str.to.re "&"))) (re.++ (str.to.re "v") (str.to.re "="))))))))))) (re.++ ((_ re.capture 9) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.opt ((_ re.capture 10) (re.++ (str.to.re "&") (re.* ((_ re.capture 11) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))))))))))))))))))) re.end-anchor)) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ ((_ re.capture 2) (re.opt (str.to.re "s"))) (re.++ (str.to.re ":") (re.++ (str.to.re "/") (str.to.re "/")))))))))) (re.++ (re.opt ((_ re.capture 3) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ (str.to.re "y") (re.++ (str.to.re "o") (re.++ (str.to.re "u") (re.++ (str.to.re "t") (re.++ (str.to.re "u") (re.++ (re.opt ((_ re.capture 4) (re.++ (str.to.re "b") (str.to.re "e")))) (re.++ (str.to.re ".") (re.++ (re.+ ((_ re.capture 5) (re.range "a" "z"))) (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 6) (re.++ (str.to.re "w") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ ((_ re.capture 7) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ ((_ re.capture 8) (re.union (str.to.re "?") (str.to.re "&"))) (re.++ (str.to.re "v") (str.to.re "="))))))))))) (re.++ ((_ re.capture 9) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.opt ((_ re.capture 10) (re.++ (str.to.re "&") (re.* ((_ re.capture 11) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))))))))))))))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ ((_ re.capture 2) (re.opt (str.to.re "s"))) (re.++ (str.to.re ":") (re.++ (str.to.re "/") (str.to.re "/")))))))))) (re.++ (re.opt ((_ re.capture 3) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ (str.to.re "y") (re.++ (str.to.re "o") (re.++ (str.to.re "u") (re.++ (str.to.re "t") (re.++ (str.to.re "u") (re.++ (re.opt ((_ re.capture 4) (re.++ (str.to.re "b") (str.to.re "e")))) (re.++ (str.to.re ".") (re.++ (re.+ ((_ re.capture 5) (re.range "a" "z"))) (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 6) (re.++ (str.to.re "w") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ ((_ re.capture 7) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ ((_ re.capture 8) (re.union (str.to.re "?") (str.to.re "&"))) (re.++ (str.to.re "v") (str.to.re "="))))))))))) (re.++ ((_ re.capture 9) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.opt ((_ re.capture 10) (re.++ (str.to.re "&") (re.* ((_ re.capture 11) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))))))))))))))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ ((_ re.capture 2) (re.opt (str.to.re "s"))) (re.++ (str.to.re ":") (re.++ (str.to.re "/") (str.to.re "/")))))))))) (re.++ (re.opt ((_ re.capture 3) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ (str.to.re "y") (re.++ (str.to.re "o") (re.++ (str.to.re "u") (re.++ (str.to.re "t") (re.++ (str.to.re "u") (re.++ (re.opt ((_ re.capture 4) (re.++ (str.to.re "b") (str.to.re "e")))) (re.++ (str.to.re ".") (re.++ (re.+ ((_ re.capture 5) (re.range "a" "z"))) (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 6) (re.++ (str.to.re "w") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ ((_ re.capture 7) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ ((_ re.capture 8) (re.union (str.to.re "?") (str.to.re "&"))) (re.++ (str.to.re "v") (str.to.re "="))))))))))) (re.++ ((_ re.capture 9) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.opt ((_ re.capture 10) (re.++ (str.to.re "&") (re.* ((_ re.capture 11) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))))))))))))))))))) re.end-anchor)) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ ((_ re.capture 2) (re.opt (str.to.re "s"))) (re.++ (str.to.re ":") (re.++ (str.to.re "/") (str.to.re "/")))))))))) (re.++ (re.opt ((_ re.capture 3) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ (str.to.re "y") (re.++ (str.to.re "o") (re.++ (str.to.re "u") (re.++ (str.to.re "t") (re.++ (str.to.re "u") (re.++ (re.opt ((_ re.capture 4) (re.++ (str.to.re "b") (str.to.re "e")))) (re.++ (str.to.re ".") (re.++ (re.+ ((_ re.capture 5) (re.range "a" "z"))) (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 6) (re.++ (str.to.re "w") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ ((_ re.capture 7) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ ((_ re.capture 8) (re.union (str.to.re "?") (str.to.re "&"))) (re.++ (str.to.re "v") (str.to.re "="))))))))))) (re.++ ((_ re.capture 9) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.opt ((_ re.capture 10) (re.++ (str.to.re "&") (re.* ((_ re.capture 11) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))))))))))))))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ ((_ re.capture 2) (re.opt (str.to.re "s"))) (re.++ (str.to.re ":") (re.++ (str.to.re "/") (str.to.re "/")))))))))) (re.++ (re.opt ((_ re.capture 3) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ (str.to.re "y") (re.++ (str.to.re "o") (re.++ (str.to.re "u") (re.++ (str.to.re "t") (re.++ (str.to.re "u") (re.++ (re.opt ((_ re.capture 4) (re.++ (str.to.re "b") (str.to.re "e")))) (re.++ (str.to.re ".") (re.++ (re.+ ((_ re.capture 5) (re.range "a" "z"))) (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 6) (re.++ (str.to.re "w") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ ((_ re.capture 7) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ ((_ re.capture 8) (re.union (str.to.re "?") (str.to.re "&"))) (re.++ (str.to.re "v") (str.to.re "="))))))))))) (re.++ ((_ re.capture 9) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.opt ((_ re.capture 10) (re.++ (str.to.re "&") (re.* ((_ re.capture 11) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))))))))))))))))))) re.end-anchor)))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ ((_ re.capture 2) (re.opt (str.to.re "s"))) (re.++ (str.to.re ":") (re.++ (str.to.re "/") (str.to.re "/")))))))))) (re.++ (re.opt ((_ re.capture 3) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ (str.to.re "y") (re.++ (str.to.re "o") (re.++ (str.to.re "u") (re.++ (str.to.re "t") (re.++ (str.to.re "u") (re.++ (re.opt ((_ re.capture 4) (re.++ (str.to.re "b") (str.to.re "e")))) (re.++ (str.to.re ".") (re.++ (re.+ ((_ re.capture 5) (re.range "a" "z"))) (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 6) (re.++ (str.to.re "w") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ ((_ re.capture 7) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ ((_ re.capture 8) (re.union (str.to.re "?") (str.to.re "&"))) (re.++ (str.to.re "v") (str.to.re "="))))))))))) (re.++ ((_ re.capture 9) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.opt ((_ re.capture 10) (re.++ (str.to.re "&") (re.* ((_ re.capture 11) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))))))))))))))))))) re.end-anchor)) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ ((_ re.capture 2) (re.opt (str.to.re "s"))) (re.++ (str.to.re ":") (re.++ (str.to.re "/") (str.to.re "/")))))))))) (re.++ (re.opt ((_ re.capture 3) (re.++ (str.to.re "w") (re.++ (str.to.re "w") (re.++ (str.to.re "w") (str.to.re ".")))))) (re.++ (str.to.re "y") (re.++ (str.to.re "o") (re.++ (str.to.re "u") (re.++ (str.to.re "t") (re.++ (str.to.re "u") (re.++ (re.opt ((_ re.capture 4) (re.++ (str.to.re "b") (str.to.re "e")))) (re.++ (str.to.re ".") (re.++ (re.+ ((_ re.capture 5) (re.range "a" "z"))) (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 6) (re.++ (str.to.re "w") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ ((_ re.capture 7) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ ((_ re.capture 8) (re.union (str.to.re "?") (str.to.re "&"))) (re.++ (str.to.re "v") (str.to.re "="))))))))))) (re.++ ((_ re.capture 9) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.opt ((_ re.capture 10) (re.++ (str.to.re "&") (re.* ((_ re.capture 11) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))))))))))))))))))) re.end-anchor))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)