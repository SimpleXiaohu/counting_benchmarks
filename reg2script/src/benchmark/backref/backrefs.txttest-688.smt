;;([bdglmnprst])\1{1,}$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (re.*? re.allchar) (str.to.re "b")) (re.union (re.++ (re.*? re.allchar) (str.to.re "d")) (re.union (re.++ (re.*? re.allchar) (str.to.re "g")) (re.union (re.++ (re.*? re.allchar) (str.to.re "l")) (re.union (re.++ (re.*? re.allchar) (str.to.re "m")) (re.union (re.++ (re.*? re.allchar) (str.to.re "n")) (re.union (re.++ (re.*? re.allchar) (str.to.re "p")) (re.union (re.++ (re.*? re.allchar) (str.to.re "r")) (re.union (re.++ (re.*? re.allchar) (str.to.re "s")) (re.++ (re.*? re.allchar) (str.to.re "t")))))))))))) ((_ re.loop 0 1) (_ re.reference 1))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
