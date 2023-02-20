;;^(t?d_)?(([yMdewHhmsft])\3*)$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.opt ((_ re.capture 1) (re.++ (re.opt (str.to.re "t")) (re.++ (str.to.re "d") (str.to.re "_"))))) ((_ re.capture 2) (re.++ ((_ re.capture 3) (re.union (str.to.re "y") (re.union (str.to.re "M") (re.union (str.to.re "d") (re.union (str.to.re "e") (re.union (str.to.re "w") (re.union (str.to.re "H") (re.union (str.to.re "h") (re.union (str.to.re "m") (re.union (str.to.re "s") (re.union (str.to.re "f") (str.to.re "t")))))))))))) (re.* (_ re.reference 3)))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
