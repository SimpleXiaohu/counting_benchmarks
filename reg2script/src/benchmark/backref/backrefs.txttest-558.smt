;;(a)(b)(c)(d)(e)(f)(g)(h)(i)(j)(k)\12\123

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (str.to.re "a")) (re.++ ((_ re.capture 2) (str.to.re "b")) (re.++ ((_ re.capture 3) (str.to.re "c")) (re.++ ((_ re.capture 4) (str.to.re "d")) (re.++ ((_ re.capture 5) (str.to.re "e")) (re.++ ((_ re.capture 6) (str.to.re "f")) (re.++ ((_ re.capture 7) (str.to.re "g")) (re.++ ((_ re.capture 8) (str.to.re "h")) (re.++ ((_ re.capture 9) (str.to.re "i")) (re.++ ((_ re.capture 10) (str.to.re "j")) (re.++ ((_ re.capture 11) (str.to.re "k")) (re.++ (_ re.reference 12) (_ re.reference 123))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
