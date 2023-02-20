;;(^|;|\s+)('|")@fixture\s+.+?\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ ((_ re.capture 1) (re.union (re.union re.begin-anchor (re.++ (re.*? re.allchar) (str.to.re ";"))) (re.++ (re.*? re.allchar) (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))))) (re.++ ((_ re.capture 2) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ (str.to.re "@") (re.++ (str.to.re "f") (re.++ (str.to.re "i") (re.++ (str.to.re "x") (re.++ (str.to.re "t") (re.++ (str.to.re "u") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (_ re.reference 2) re.all)))))))))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
