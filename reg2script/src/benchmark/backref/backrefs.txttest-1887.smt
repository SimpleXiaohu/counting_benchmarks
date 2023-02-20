;;(_{2})([^*]+)\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) ((_ re.loop 0 2) (str.to.re "_"))) (re.++ ((_ re.capture 2) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "*")))) (_ re.reference 1))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
