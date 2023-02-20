;;(^|[\s\}])(@(?:-webkit-|-moz-|-o-|-ms-)?keyframes)\s+(['"])?([\w\-]+)\3

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ ((_ re.capture 1) (re.union re.begin-anchor (re.union (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{20}")) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{0b}")) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{0a}")) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{0d}")) (re.union (re.++ (re.*? re.allchar) (str.to.re "\u{09}")) (re.++ (re.*? re.allchar) (str.to.re "\u{0c}"))))))) (re.++ (re.*? re.allchar) (str.to.re "}"))))) (re.++ ((_ re.capture 2) (re.++ (str.to.re "@") (re.++ (re.opt (re.union (re.union (re.union (re.++ (str.to.re "-") (re.++ (str.to.re "w") (re.++ (str.to.re "e") (re.++ (str.to.re "b") (re.++ (str.to.re "k") (re.++ (str.to.re "i") (re.++ (str.to.re "t") (str.to.re "-")))))))) (re.++ (str.to.re "-") (re.++ (str.to.re "m") (re.++ (str.to.re "o") (re.++ (str.to.re "z") (str.to.re "-")))))) (re.++ (str.to.re "-") (re.++ (str.to.re "o") (str.to.re "-")))) (re.++ (str.to.re "-") (re.++ (str.to.re "m") (re.++ (str.to.re "s") (str.to.re "-")))))) (re.++ (str.to.re "k") (re.++ (str.to.re "e") (re.++ (str.to.re "y") (re.++ (str.to.re "f") (re.++ (str.to.re "r") (re.++ (str.to.re "a") (re.++ (str.to.re "m") (re.++ (str.to.re "e") (str.to.re "s")))))))))))) (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (re.opt ((_ re.capture 3) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")))) (re.++ ((_ re.capture 4) (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (str.to.re "-")))) (re.++ (_ re.reference 3) re.all))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
