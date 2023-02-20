;;#extends\(("|')(\/?page\/layout\/.*?)\.vm\1\s*(("|')var:tplType=("|')(.*?)\5\4)?(?:.*?)\)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "#") (re.++ (str.to.re "e") (re.++ (str.to.re "x") (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re "d") (re.++ (str.to.re "s") (re.++ (str.to.re "(") (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ ((_ re.capture 2) (re.++ (re.opt (str.to.re "/")) (re.++ (str.to.re "p") (re.++ (str.to.re "a") (re.++ (str.to.re "g") (re.++ (str.to.re "e") (re.++ (str.to.re "/") (re.++ (str.to.re "l") (re.++ (str.to.re "a") (re.++ (str.to.re "y") (re.++ (str.to.re "o") (re.++ (str.to.re "u") (re.++ (str.to.re "t") (re.++ (str.to.re "/") (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))))))))))))))) (re.++ (str.to.re ".") (re.++ (str.to.re "v") (re.++ (str.to.re "m") (re.++ (_ re.reference 1) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (re.opt ((_ re.capture 3) (re.++ ((_ re.capture 4) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ (str.to.re "v") (re.++ (str.to.re "a") (re.++ (str.to.re "r") (re.++ (str.to.re ":") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (str.to.re "l") (re.++ (str.to.re "T") (re.++ (str.to.re "y") (re.++ (str.to.re "p") (re.++ (str.to.re "e") (re.++ (str.to.re "=") (re.++ ((_ re.capture 5) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ ((_ re.capture 6) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (_ re.reference 5) (_ re.reference 4))))))))))))))))))) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re ")"))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
