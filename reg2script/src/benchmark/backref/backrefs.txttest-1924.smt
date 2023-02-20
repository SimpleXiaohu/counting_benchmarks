;;(.)(\w)(\W)(\s)(\S)(\d)(\D),\1\2\3\4\5\6\7,\1\2\3\4\5\6\7

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.++ (re.++ ((_ re.capture 1) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ ((_ re.capture 2) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_"))))) (re.++ ((_ re.capture 3) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "A" "Z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "0" "9")) (re.diff (re.range "\x01" "\xff") (str.to.re "_")))))) (re.++ ((_ re.capture 4) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 5) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))) (re.++ ((_ re.capture 6) (re.range "0" "9")) ((_ re.capture 7) (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))))))))) (re.++ (str.to.re ",") (re.++ (_ re.reference 1) (re.++ (_ re.reference 2) (re.++ (_ re.reference 3) (re.++ (_ re.reference 4) (re.++ (_ re.reference 5) (re.++ (_ re.reference 6) (_ re.reference 7))))))))) (re.++ (str.to.re ",") (re.++ (_ re.reference 1) (re.++ (_ re.reference 2) (re.++ (_ re.reference 3) (re.++ (_ re.reference 4) (re.++ (_ re.reference 5) (re.++ (_ re.reference 6) (_ re.reference 7))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
