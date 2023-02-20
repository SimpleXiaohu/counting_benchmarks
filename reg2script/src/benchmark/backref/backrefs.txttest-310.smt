;;\s(?:width|height|style)=(["']).*?\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.++ (re.union (re.union (re.++ (str.to.re "w") (re.++ (str.to.re "i") (re.++ (str.to.re "d") (re.++ (str.to.re "t") (str.to.re "h"))))) (re.++ (str.to.re "h") (re.++ (str.to.re "e") (re.++ (str.to.re "i") (re.++ (str.to.re "g") (re.++ (str.to.re "h") (str.to.re "t"))))))) (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "y") (re.++ (str.to.re "l") (str.to.re "e")))))) (re.++ (str.to.re "=") (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (_ re.reference 1)))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
