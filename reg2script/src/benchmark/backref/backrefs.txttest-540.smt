;;^(?:(?:\1|X)(a|b))+

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ (re.+ (re.++ (re.union (_ re.reference 1) (str.to.re "X")) ((_ re.capture 1) (re.union (str.to.re "a") (str.to.re "b"))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
