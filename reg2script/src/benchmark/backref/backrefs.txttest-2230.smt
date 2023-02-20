;;^<(\w+)(\s+[^>]*)?((\/?>)|(>([^<>]*)<\/\1>))$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) (re.++ (re.opt ((_ re.capture 2) (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re ">")))))) ((_ re.capture 3) (re.union ((_ re.capture 4) (re.++ (re.opt (str.to.re "/")) (str.to.re ">"))) ((_ re.capture 5) (re.++ (str.to.re ">") (re.++ ((_ re.capture 6) (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "<")) (re.diff (re.range "\x01" "\xff") (str.to.re ">"))))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (str.to.re ">"))))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
