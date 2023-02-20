;;\942\143\144

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (_ re.reference 942) (re.++ (_ re.reference 143) (_ re.reference 144))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
