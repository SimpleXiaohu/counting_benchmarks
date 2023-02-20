;;(?:a)\1\k<z>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "a") (re.++ (_ re.reference 1) (re.++ (str.to.re "k") (re.++ (str.to.re "<") (re.++ (str.to.re "z") (str.to.re ">")))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
