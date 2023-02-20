;;d{1,4}|m{1,4}|yy(?:yy)?|([HhMs])\1?

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.union (re.union ((_ re.loop 1 4) (str.to.re "d")) ((_ re.loop 1 4) (str.to.re "m"))) (re.++ (str.to.re "y") (re.++ (str.to.re "y") (re.opt (re.++ (str.to.re "y") (str.to.re "y")))))) (re.++ ((_ re.capture 1) (re.union (str.to.re "H") (re.union (str.to.re "h") (re.union (str.to.re "M") (str.to.re "s"))))) (re.opt (_ re.reference 1)))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
