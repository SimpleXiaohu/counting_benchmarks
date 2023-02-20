;;^(['"])UTF-8\1$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ (str.to.re "U") (re.++ (str.to.re "T") (re.++ (str.to.re "F") (re.++ (str.to.re "-") (re.++ (str.to.re "8") (_ re.reference 1)))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
