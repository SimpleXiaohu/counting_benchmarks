;;(\s+|\u0007\d+\u0007)[a-z\-\d]+(?:=(["'])[^\u0007]+?\2)?$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (re.*? re.allchar) (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) (re.++ (re.++ (re.*? re.allchar) (str.to.re "\u{0007}")) (re.++ (re.+ (re.range "0" "9")) (str.to.re "\u{0007}"))))) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (str.to.re "-") (re.range "0" "9")))) (re.opt (re.++ (str.to.re "=") (re.++ ((_ re.capture 2) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0007}"))) (_ re.reference 2))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
