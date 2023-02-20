;;[import|export][\s\S]*?from.*?(['"])([.~].*?)(\1)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.union (str.to.re "i") (re.union (str.to.re "m") (re.union (str.to.re "p") (re.union (str.to.re "o") (re.union (str.to.re "r") (re.union (str.to.re "t") (re.union (str.to.re "|") (re.union (str.to.re "e") (re.union (str.to.re "x") (re.union (str.to.re "p") (re.union (str.to.re "o") (re.union (str.to.re "r") (str.to.re "t"))))))))))))) (re.++ (re.*? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))))) (re.++ (str.to.re "f") (re.++ (str.to.re "r") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ ((_ re.capture 2) (re.++ (re.union (str.to.re ".") (str.to.re "~")) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))) ((_ re.capture 3) (_ re.reference 1))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
