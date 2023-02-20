;;[BOZ](['"])[A-F0-9]+\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.union (str.to.re "B") (re.union (str.to.re "O") (str.to.re "Z"))) (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ (re.+ (re.union (re.range "A" "F") (re.range "0" "9"))) (_ re.reference 1)))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
