;;@import\s+(['"])((http:\/\/|https:\/\/|\/)?[^'"\s]*)\1\s*;?

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "@") (re.++ (str.to.re "i") (re.++ (str.to.re "m") (re.++ (str.to.re "p") (re.++ (str.to.re "o") (re.++ (str.to.re "r") (re.++ (str.to.re "t") (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ ((_ re.capture 2) (re.++ (re.opt ((_ re.capture 3) (re.union (re.union (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (str.to.re ":") (re.++ (str.to.re "/") (str.to.re "/"))))))) (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (str.to.re "s") (re.++ (str.to.re ":") (re.++ (str.to.re "/") (str.to.re "/"))))))))) (str.to.re "/")))) (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))))) (re.++ (_ re.reference 1) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.opt (str.to.re ";")))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
