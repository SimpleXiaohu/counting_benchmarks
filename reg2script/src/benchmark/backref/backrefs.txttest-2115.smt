;;@import\s+(?:(?:url\s*\()(['"]?)(.*?)\1\)|(['"]?)(.*?)\3)[^;]*?;|url\s*\((['"]?)(.*?)\5\)|("')|(\/\*)|(\*\/)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.union (re.union (re.union (re.++ (str.to.re "@") (re.++ (str.to.re "i") (re.++ (str.to.re "m") (re.++ (str.to.re "p") (re.++ (str.to.re "o") (re.++ (str.to.re "r") (re.++ (str.to.re "t") (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (re.union (re.++ (re.++ (str.to.re "u") (re.++ (str.to.re "r") (re.++ (str.to.re "l") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (str.to.re "("))))) (re.++ ((_ re.capture 1) (re.opt (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")))) (re.++ ((_ re.capture 2) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (_ re.reference 1) (str.to.re ")"))))) (re.++ ((_ re.capture 3) (re.opt (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")))) (re.++ ((_ re.capture 4) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (_ re.reference 3)))) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re ";"))) (str.to.re ";"))))))))))) (re.++ (str.to.re "u") (re.++ (str.to.re "r") (re.++ (str.to.re "l") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "(") (re.++ ((_ re.capture 5) (re.opt (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")))) (re.++ ((_ re.capture 6) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (_ re.reference 5) (str.to.re ")")))))))))) ((_ re.capture 7) (re.++ (str.to.re "\u{22}") (str.to.re "\u{27}")))) ((_ re.capture 8) (re.++ (str.to.re "/") (str.to.re "*")))) ((_ re.capture 9) (re.++ (str.to.re "*") (str.to.re "/")))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
