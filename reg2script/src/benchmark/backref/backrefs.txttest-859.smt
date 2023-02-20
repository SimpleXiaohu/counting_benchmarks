;;(\x1b\[\d+m)\1{1,}

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "\u{1b}") (re.++ (str.to.re "[") (re.++ (re.+ (re.range "0" "9")) (str.to.re "m"))))) ((_ re.loop 0 1) (_ re.reference 1))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
