;;\/(mock)\/\1\.js$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ (re.++ (re.*? re.allchar) (str.to.re "/")) (re.++ ((_ re.capture 1) (re.++ (str.to.re "m") (re.++ (str.to.re "o") (re.++ (str.to.re "c") (str.to.re "k"))))) (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (re.++ (str.to.re ".") (re.++ (str.to.re "j") (str.to.re "s"))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
