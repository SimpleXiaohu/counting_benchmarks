;;(#\*[\s\S]*?(?:\*#|$)|##[^\n\r\f]*)|(?:#(require|extends|widget|html|uri)\s*\(\s*('|")(.*?)\3)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.union (re.++ ((_ re.capture 1) (re.union (re.++ (re.++ (re.*? re.allchar) (str.to.re "#")) (re.++ (str.to.re "*") (re.++ (re.*? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))))) (re.union (re.++ (str.to.re "*") (str.to.re "#")) re.end-anchor)))) (re.++ (re.++ (re.*? re.allchar) (str.to.re "#")) (re.++ (str.to.re "#") (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))))) re.all) (re.++ (re.++ (re.*? re.allchar) (str.to.re "#")) (re.++ ((_ re.capture 2) (re.union (re.union (re.union (re.union (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "i") (re.++ (str.to.re "r") (str.to.re "e"))))))) (re.++ (str.to.re "e") (re.++ (str.to.re "x") (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re "d") (str.to.re "s")))))))) (re.++ (str.to.re "w") (re.++ (str.to.re "i") (re.++ (str.to.re "d") (re.++ (str.to.re "g") (re.++ (str.to.re "e") (str.to.re "t"))))))) (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "m") (str.to.re "l"))))) (re.++ (str.to.re "u") (re.++ (str.to.re "r") (str.to.re "i"))))) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "(") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 3) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ ((_ re.capture 4) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (_ re.reference 3) re.all)))))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
