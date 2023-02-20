;;([bcdfhjklmnpqrstvwxyz])\1+

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (str.to.re "b") (re.union (str.to.re "c") (re.union (str.to.re "d") (re.union (str.to.re "f") (re.union (str.to.re "h") (re.union (str.to.re "j") (re.union (str.to.re "k") (re.union (str.to.re "l") (re.union (str.to.re "m") (re.union (str.to.re "n") (re.union (str.to.re "p") (re.union (str.to.re "q") (re.union (str.to.re "r") (re.union (str.to.re "s") (re.union (str.to.re "t") (re.union (str.to.re "v") (re.union (str.to.re "w") (re.union (str.to.re "x") (re.union (str.to.re "y") (str.to.re "z"))))))))))))))))))))) (re.+ (_ re.reference 1))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
