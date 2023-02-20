;;abc\91

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "a") (re.++ (str.to.re "b") (re.++ (str.to.re "c") (_ re.reference 91)))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
