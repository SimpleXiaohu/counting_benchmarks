;;(<(pre|script|textarea)[^>]*?>)([\s\S]+?)(<\/\2>)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "<") (re.++ ((_ re.capture 2) (re.union (re.union (re.++ (str.to.re "p") (re.++ (str.to.re "r") (str.to.re "e"))) (re.++ (str.to.re "s") (re.++ (str.to.re "c") (re.++ (str.to.re "r") (re.++ (str.to.re "i") (re.++ (str.to.re "p") (str.to.re "t"))))))) (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (str.to.re "x") (re.++ (str.to.re "t") (re.++ (str.to.re "a") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (str.to.re "a")))))))))) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re ">"))) (str.to.re ">"))))) (re.++ ((_ re.capture 3) (re.+? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))) ((_ re.capture 4) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 2) (str.to.re ">"))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
