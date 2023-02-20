;;(\r|\n)\1$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{0d}")) (re.++ (re.*? re.allchar) (str.to.re "\u{0a}")))) (_ re.reference 1)) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
