;;%[qQiIwWxs]?([^a-zA-Z0-9\s\{\(\[<])(?:[^\\]|\\[\s\S])*?\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "%") (re.++ (re.opt (re.union (str.to.re "q") (re.union (str.to.re "Q") (re.union (str.to.re "i") (re.union (str.to.re "I") (re.union (str.to.re "w") (re.union (str.to.re "W") (re.union (str.to.re "x") (str.to.re "s"))))))))) (re.++ ((_ re.capture 1) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "A" "Z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "0" "9")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "{")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "(")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "[")) (re.diff (re.range "\x01" "\xff") (str.to.re "<"))))))))))))))) (re.++ (re.*? (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\\")) (re.++ (str.to.re "\\") (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))))))) (_ re.reference 1))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
