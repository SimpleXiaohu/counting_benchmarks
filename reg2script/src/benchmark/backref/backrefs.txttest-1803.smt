;;[^@\-\.\w]|^[_@\.\-]|[\._\-]{2}|[@\.]{2}|(@)[^@]*\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.union (re.union (re.union (re.union (re.++ (re.*? re.allchar) (re.++ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "@")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "-")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re ".")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "A" "Z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "0" "9")) (re.diff (re.range "\x01" "\xff") (str.to.re "_")))))))) re.all)) (re.++ re.begin-anchor (re.union (re.++ (str.to.re "_") re.all) (re.union (re.++ (str.to.re "@") re.all) (re.union (re.++ (str.to.re ".") re.all) (re.++ (str.to.re "-") re.all)))))) (re.++ (re.*? re.allchar) (re.++ ((_ re.loop 0 2) (re.union (str.to.re ".") (re.union (str.to.re "_") (str.to.re "-")))) re.all))) (re.++ (re.*? re.allchar) (re.++ ((_ re.loop 0 2) (re.union (str.to.re "@") (str.to.re "."))) re.all))) (re.++ ((_ re.capture 1) (re.++ (re.*? re.allchar) (str.to.re "@"))) (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "@"))) (re.++ (_ re.reference 1) re.all))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
