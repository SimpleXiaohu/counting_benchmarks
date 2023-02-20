;;(')(.|\\.|\\u[\dA-Fa-f]{4})\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (str.to.re "\u{27}")) (re.++ ((_ re.capture 2) (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (re.++ (str.to.re "\\") (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "\\") (re.++ (str.to.re "u") ((_ re.loop 0 4) (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f")))))))) (_ re.reference 1))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
