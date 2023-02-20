;;require\s*(\.async)?\s*\(\s*(["'])(.+?)\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "i") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re ".") (re.++ (str.to.re "a") (re.++ (str.to.re "s") (re.++ (str.to.re "y") (re.++ (str.to.re "n") (str.to.re "c")))))))) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "(") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 2) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ ((_ re.capture 3) (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (_ re.reference 2))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
