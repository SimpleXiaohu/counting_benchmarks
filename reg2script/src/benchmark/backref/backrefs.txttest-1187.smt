;;\s+xmlns(?:\:[\w-]+)?=("|')[^"']*\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "x") (re.++ (str.to.re "m") (re.++ (str.to.re "l") (re.++ (str.to.re "n") (re.++ (str.to.re "s") (re.++ (re.opt (re.++ (str.to.re ":") (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (str.to.re "-"))))) (re.++ (str.to.re "=") (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")))) (_ re.reference 1))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
