;;(\d{1,2})(\s|-|\/|\\|_|\.)(\d{1,2})\2(19\d{2}|200\d|201\d|\d{2})

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.capture 2) (re.union (re.union (re.union (re.union (re.union (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (str.to.re "-")) (str.to.re "/")) (str.to.re "\\")) (str.to.re "_")) (str.to.re "."))) (re.++ ((_ re.capture 3) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (_ re.reference 2) ((_ re.capture 4) (re.union (re.union (re.union (re.++ (str.to.re "1") (re.++ (str.to.re "9") ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re "2") (re.++ (str.to.re "0") (re.++ (str.to.re "0") (re.range "0" "9"))))) (re.++ (str.to.re "2") (re.++ (str.to.re "0") (re.++ (str.to.re "1") (re.range "0" "9"))))) ((_ re.loop 0 2) (re.range "0" "9")))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
