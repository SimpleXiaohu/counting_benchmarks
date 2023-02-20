;;(\n|^)diff --git a\/(\S+) b\/\2[^\n]*

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ ((_ re.capture 1) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{0a}")) re.begin-anchor)) (re.++ (str.to.re "d") (re.++ (str.to.re "i") (re.++ (str.to.re "f") (re.++ (str.to.re "f") (re.++ (str.to.re " ") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "g") (re.++ (str.to.re "i") (re.++ (str.to.re "t") (re.++ (str.to.re " ") (re.++ (str.to.re "a") (re.++ (str.to.re "/") (re.++ ((_ re.capture 2) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))))) (re.++ (str.to.re " ") (re.++ (str.to.re "b") (re.++ (str.to.re "/") (re.++ (_ re.reference 2) (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}"))) re.all))))))))))))))))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
