;;^\s*(?:\/\/)?<!(--)?\[CDATA\[((.|\n)*)(\/\/)?\]\]\1>\s*$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (re.opt (re.++ (str.to.re "/") (str.to.re "/"))) (re.++ (str.to.re "<") (re.++ (str.to.re "!") (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "-") (str.to.re "-")))) (re.++ (str.to.re "[") (re.++ (str.to.re "C") (re.++ (str.to.re "D") (re.++ (str.to.re "A") (re.++ (str.to.re "T") (re.++ (str.to.re "A") (re.++ (str.to.re "[") (re.++ ((_ re.capture 2) (re.* ((_ re.capture 3) (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "\u{0a}"))))) (re.++ (re.opt ((_ re.capture 4) (re.++ (str.to.re "/") (str.to.re "/")))) (re.++ (str.to.re "]") (re.++ (str.to.re "]") (re.++ (_ re.reference 1) (re.++ (str.to.re ">") (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))))))))))))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
