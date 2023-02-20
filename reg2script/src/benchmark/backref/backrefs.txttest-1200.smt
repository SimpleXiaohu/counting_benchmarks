;;("""|''')[\W\w]*?\1|("|'|\/)[\W\w]*?\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "\u{22}") (re.++ (str.to.re "\u{22}") (str.to.re "\u{22}"))) (re.++ (str.to.re "\u{27}") (re.++ (str.to.re "\u{27}") (str.to.re "\u{27}"))))) (re.++ (re.*? (re.union (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "A" "Z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "0" "9")) (re.diff (re.range "\x01" "\xff") (str.to.re "_"))))) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) (_ re.reference 1))) (re.++ ((_ re.capture 2) (re.union (re.union (str.to.re "\u{22}") (str.to.re "\u{27}")) (str.to.re "/"))) (re.++ (re.*? (re.union (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "A" "Z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "0" "9")) (re.diff (re.range "\x01" "\xff") (str.to.re "_"))))) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) (_ re.reference 2)))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
