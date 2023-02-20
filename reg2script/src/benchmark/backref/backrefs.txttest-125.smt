;;([^AEIOUN])\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "A")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "E")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "I")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "O")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "U")) (re.diff (re.range "\x01" "\xff") (str.to.re "N")))))))) (_ re.reference 1)) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
