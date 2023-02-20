;;(\s|^)(_{1,2})(\w[^_]*\S)(\2)(\W)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ ((_ re.capture 1) (re.union (re.union (re.++ (re.*? re.allchar) (str.to.re " ")) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{0b}")) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{0a}")) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{0d}")) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{09}")) (re.++ (re.*? re.allchar) (str.to.re "\u{0c}"))))))) re.begin-anchor)) (re.++ ((_ re.capture 2) ((_ re.loop 1 2) (str.to.re "_"))) (re.++ ((_ re.capture 3) (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "_"))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))) (re.++ ((_ re.capture 4) (_ re.reference 2)) (re.++ ((_ re.capture 5) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "A" "Z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "0" "9")) (re.diff (re.range "\x01" "\xff") (str.to.re "_")))))) re.all)))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
