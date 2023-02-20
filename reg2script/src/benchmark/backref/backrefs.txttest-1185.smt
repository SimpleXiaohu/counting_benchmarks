;;^(?:,|^)\s*?(?:(true|false|(-?\d+))|('|")(|.*?([^\\]|\3))\3)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ (re.union (str.to.re ",") re.begin-anchor) (re.++ (re.*? (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.union (re.++ ((_ re.capture 1) (re.union (re.union (re.++ (str.to.re "t") (re.++ (str.to.re "r") (re.++ (str.to.re "u") (str.to.re "e")))) (re.++ (str.to.re "f") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re "s") (str.to.re "e")))))) ((_ re.capture 2) (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")))))) re.all) (re.++ ((_ re.capture 3) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ ((_ re.capture 4) (re.union (str.to.re "") (re.++ (str.to.re "") (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) ((_ re.capture 5) (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\\")) (_ re.reference 3))))))) (re.++ (_ re.reference 3) re.all)))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
