;;(START)(=+)(@+)\2\1([\s\S]*)(END)\2\3\2\5

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "S") (re.++ (str.to.re "T") (re.++ (str.to.re "A") (re.++ (str.to.re "R") (str.to.re "T")))))) (re.++ ((_ re.capture 2) (re.+ (str.to.re "="))) (re.++ ((_ re.capture 3) (re.+ (str.to.re "@"))) (re.++ (_ re.reference 2) (re.++ (_ re.reference 1) (re.++ ((_ re.capture 4) (re.* (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))) (re.++ ((_ re.capture 5) (re.++ (str.to.re "E") (re.++ (str.to.re "N") (str.to.re "D")))) (re.++ (_ re.reference 2) (re.++ (_ re.reference 3) (re.++ (_ re.reference 2) (_ re.reference 5))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
