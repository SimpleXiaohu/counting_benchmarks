;;([bdeflmnopst])\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (str.to.re "b") (re.union (str.to.re "d") (re.union (str.to.re "e") (re.union (str.to.re "f") (re.union (str.to.re "l") (re.union (str.to.re "m") (re.union (str.to.re "n") (re.union (str.to.re "o") (re.union (str.to.re "p") (re.union (str.to.re "s") (str.to.re "t")))))))))))) (_ re.reference 1)) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
