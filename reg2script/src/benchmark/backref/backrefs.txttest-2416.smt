;;^(?:[\n\s]*(\"|\')use\s+(latest|npm)\1\s*(?:;|\n))*

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ (re.* (re.++ (re.* (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ (str.to.re "u") (re.++ (str.to.re "s") (re.++ (str.to.re "e") (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "l") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (str.to.re "s") (str.to.re "t")))))) (re.++ (str.to.re "n") (re.++ (str.to.re "p") (str.to.re "m"))))) (re.++ (_ re.reference 1) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.union (str.to.re ";") (str.to.re "\u{0a}")))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
