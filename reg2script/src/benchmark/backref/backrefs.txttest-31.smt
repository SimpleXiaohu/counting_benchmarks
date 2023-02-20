;;\2LITERAL\\1LITERAL\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (_ re.reference 2) (re.++ (str.to.re "L") (re.++ (str.to.re "I") (re.++ (str.to.re "T") (re.++ (str.to.re "E") (re.++ (str.to.re "R") (re.++ (str.to.re "A") (re.++ (str.to.re "L") (re.++ (str.to.re "\\") (re.++ (str.to.re "1") (re.++ (str.to.re "L") (re.++ (str.to.re "I") (re.++ (str.to.re "T") (re.++ (str.to.re "E") (re.++ (str.to.re "R") (re.++ (str.to.re "A") (re.++ (str.to.re "L") (_ re.reference 2)))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
