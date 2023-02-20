;;([yMdhsm])(\1*)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (str.to.re "y") (re.union (str.to.re "M") (re.union (str.to.re "d") (re.union (str.to.re "h") (re.union (str.to.re "s") (str.to.re "m"))))))) ((_ re.capture 2) (re.* (_ re.reference 1)))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
