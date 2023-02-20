;;(['"])\1\+(.*)\+\1\1$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{27}")) (re.++ (re.*? re.allchar) (str.to.re "\u{22}")))) (re.++ (_ re.reference 1) (re.++ (str.to.re "+") (re.++ ((_ re.capture 2) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "+") (re.++ (_ re.reference 1) (_ re.reference 1))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
