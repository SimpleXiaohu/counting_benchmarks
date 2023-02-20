;;(b?r)(#*)(".*?)("\2)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (re.opt (str.to.re "b")) (str.to.re "r"))) (re.++ ((_ re.capture 2) (re.* (str.to.re "#"))) (re.++ ((_ re.capture 3) (re.++ (str.to.re "\u{22}") (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))) ((_ re.capture 4) (re.++ (str.to.re "\u{22}") (_ re.reference 2)))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
