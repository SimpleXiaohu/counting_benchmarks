;;<tmt\-([^>\s\/]+)(?:.|\n|\r)*?<\/tmt\-\1>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ (str.to.re "t") (re.++ (str.to.re "m") (re.++ (str.to.re "t") (re.++ (str.to.re "-") (re.++ ((_ re.capture 1) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re ">")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")) (re.diff (re.range "\x01" "\xff") (str.to.re "/"))))))))))) (re.++ (re.*? (re.union (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "\u{0a}")) (str.to.re "\u{0d}"))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (str.to.re "t") (re.++ (str.to.re "m") (re.++ (str.to.re "t") (re.++ (str.to.re "-") (re.++ (_ re.reference 1) (str.to.re ">"))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
