;;^(["'])?\s*\1$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}")))) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (_ re.reference 1)))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
