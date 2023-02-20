;;^(.*)\n([-=])\2\2+(?:\n|$)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "\u{0a}") (re.++ ((_ re.capture 2) (re.union (str.to.re "-") (str.to.re "="))) (re.++ (_ re.reference 2) (re.++ (re.+ (_ re.reference 2)) (re.union (re.++ (str.to.re "\u{0a}") re.all) re.end-anchor)))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
