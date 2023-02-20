;;\377\330\377\340..JFIF

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (_ re.reference 377) (re.++ (_ re.reference 330) (re.++ (_ re.reference 377) (re.++ (_ re.reference 340) (re.++ (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (re.++ (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (re.++ (str.to.re "J") (re.++ (str.to.re "F") (re.++ (str.to.re "I") (str.to.re "F")))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
