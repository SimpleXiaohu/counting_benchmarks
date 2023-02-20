;;(?:(?:(?:require)\s*?\((['"]{1})([^'"]*)\1\))|(module\.exports))

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.++ (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "i") (re.++ (str.to.re "r") (str.to.re "e"))))))) (re.++ (re.*? (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "(") (re.++ ((_ re.capture 1) ((_ re.loop 0 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")))) (re.++ ((_ re.capture 2) (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}"))))) (re.++ (_ re.reference 1) (str.to.re ")"))))))) ((_ re.capture 3) (re.++ (str.to.re "m") (re.++ (str.to.re "o") (re.++ (str.to.re "d") (re.++ (str.to.re "u") (re.++ (str.to.re "l") (re.++ (str.to.re "e") (re.++ (str.to.re ".") (re.++ (str.to.re "e") (re.++ (str.to.re "x") (re.++ (str.to.re "p") (re.++ (str.to.re "o") (re.++ (str.to.re "r") (re.++ (str.to.re "t") (str.to.re "s")))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
