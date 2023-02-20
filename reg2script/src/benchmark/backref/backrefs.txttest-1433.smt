;;^\s*(\$|true|false|NaN|null|undefined|\d+|(\'|\").+\1)$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to.re "$") (re.++ (str.to.re "t") (re.++ (str.to.re "r") (re.++ (str.to.re "u") (str.to.re "e"))))) (re.++ (str.to.re "f") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re "s") (str.to.re "e")))))) (re.++ (str.to.re "N") (re.++ (str.to.re "a") (str.to.re "N")))) (re.++ (str.to.re "n") (re.++ (str.to.re "u") (re.++ (str.to.re "l") (str.to.re "l"))))) (re.++ (str.to.re "u") (re.++ (str.to.re "n") (re.++ (str.to.re "d") (re.++ (str.to.re "e") (re.++ (str.to.re "f") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re "e") (str.to.re "d")))))))))) (re.+ (re.range "0" "9"))) (re.++ ((_ re.capture 2) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (_ re.reference 1))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
