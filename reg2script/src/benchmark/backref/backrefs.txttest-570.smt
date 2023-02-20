;;^(a+)\1*,\1+$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.+ (str.to.re "a"))) (re.* (_ re.reference 1)))) (re.++ (str.to.re ",") (re.+ (_ re.reference 1)))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
