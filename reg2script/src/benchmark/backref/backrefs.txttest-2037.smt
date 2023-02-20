;;(?:\@end\-(?:\1|command))

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "@") (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re "d") (re.++ (str.to.re "-") (re.union (_ re.reference 1) (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (re.++ (str.to.re "m") (re.++ (str.to.re "a") (re.++ (str.to.re "n") (str.to.re "d"))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
