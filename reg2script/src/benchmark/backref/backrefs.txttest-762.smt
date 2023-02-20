;;^(.)\1[\s]*Query:(.*)$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (_ re.reference 1) (re.++ (re.* (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "Q") (re.++ (str.to.re "u") (re.++ (str.to.re "e") (re.++ (str.to.re "r") (re.++ (str.to.re "y") (re.++ (str.to.re ":") ((_ re.capture 2) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
