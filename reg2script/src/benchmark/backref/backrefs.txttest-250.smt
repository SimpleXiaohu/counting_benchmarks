;;([^\s]+?=)("|')(.+?)\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (re.+? (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))) (str.to.re "="))) (re.++ ((_ re.capture 2) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ ((_ re.capture 3) (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (_ re.reference 2)))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
