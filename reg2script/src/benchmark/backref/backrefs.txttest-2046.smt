;;('|")(.*)\1(\s*as|$)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ ((_ re.capture 1) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{27}")) (re.++ (re.*? re.allchar) (str.to.re "\u{22}")))) (re.++ ((_ re.capture 2) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (_ re.reference 1) (re.++ ((_ re.capture 3) (re.union (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "a") (str.to.re "s"))) re.end-anchor)) re.all))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
