;;^(\d{1,4})([\s\/\\_.-])(\d{1,2})\2(\d{1,4})$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ ((_ re.capture 2) (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.union (str.to.re "/") (re.union (str.to.re "\\") (re.union (str.to.re "_") (re.union (str.to.re ".") (str.to.re "-"))))))) (re.++ ((_ re.capture 3) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (_ re.reference 2) ((_ re.capture 4) ((_ re.loop 1 4) (re.range "0" "9")))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
