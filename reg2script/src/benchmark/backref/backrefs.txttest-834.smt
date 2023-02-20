;;(url\(\s*(['"])?.*?)(#[^#].*)*(\2\s*\))

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "u") (re.++ (str.to.re "r") (re.++ (str.to.re "l") (re.++ (str.to.re "(") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (re.opt ((_ re.capture 2) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")))) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))))))))) (re.++ (re.* ((_ re.capture 3) (re.++ (str.to.re "#") (re.++ (re.diff (re.range "\x01" "\xff") (str.to.re "#")) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))))) ((_ re.capture 4) (re.++ (_ re.reference 2) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (str.to.re ")")))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
