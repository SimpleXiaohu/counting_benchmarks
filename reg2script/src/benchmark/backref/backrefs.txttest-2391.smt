;;(css|js)\/(style|script)\.\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "c") (re.++ (str.to.re "s") (str.to.re "s"))) (re.++ (str.to.re "j") (str.to.re "s")))) (re.++ (str.to.re "/") (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "y") (re.++ (str.to.re "l") (str.to.re "e"))))) (re.++ (str.to.re "s") (re.++ (str.to.re "c") (re.++ (str.to.re "r") (re.++ (str.to.re "i") (re.++ (str.to.re "p") (str.to.re "t")))))))) (re.++ (str.to.re ".") (_ re.reference 1))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
