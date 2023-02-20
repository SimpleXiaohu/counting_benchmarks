;;lib(\/|\\)js(\/|\\)jquery\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "l") (re.++ (str.to.re "i") (re.++ (str.to.re "b") (re.++ ((_ re.capture 1) (re.union (str.to.re "/") (str.to.re "\\"))) (re.++ (str.to.re "j") (re.++ (str.to.re "s") (re.++ ((_ re.capture 2) (re.union (str.to.re "/") (str.to.re "\\"))) (re.++ (str.to.re "j") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "e") (re.++ (str.to.re "r") (re.++ (str.to.re "y") (_ re.reference 1)))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
