;;[imgy]*$93

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ (re.*? re.allchar) (re.* (re.union (str.to.re "i") (re.union (str.to.re "m") (re.union (str.to.re "g") (str.to.re "y")))))) (re.++ re.end-anchor (re.++ (str.to.re "9") (re.++ (str.to.re "3") re.all))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
