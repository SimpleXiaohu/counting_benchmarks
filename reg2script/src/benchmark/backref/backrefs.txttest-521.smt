;;(a)(b)(c)(d)(e)\6

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (str.to.re "a")) (re.++ ((_ re.capture 2) (str.to.re "b")) (re.++ ((_ re.capture 3) (str.to.re "c")) (re.++ ((_ re.capture 4) (str.to.re "d")) (re.++ ((_ re.capture 5) (str.to.re "e")) (_ re.reference 6)))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
