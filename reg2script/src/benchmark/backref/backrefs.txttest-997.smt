;;^(.*?)\s+(=|==|<=|>=|matches|matches_i|has|has_i)\s+('''|)(.*?)\3$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 2) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to.re "=") (re.++ (str.to.re "=") (str.to.re "="))) (re.++ (str.to.re "<") (str.to.re "="))) (re.++ (str.to.re ">") (str.to.re "="))) (re.++ (str.to.re "m") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ (str.to.re "e") (str.to.re "s")))))))) (re.++ (str.to.re "m") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ (str.to.re "e") (re.++ (str.to.re "s") (re.++ (str.to.re "_") (str.to.re "i")))))))))) (re.++ (str.to.re "h") (re.++ (str.to.re "a") (str.to.re "s")))) (re.++ (str.to.re "h") (re.++ (str.to.re "a") (re.++ (str.to.re "s") (re.++ (str.to.re "_") (str.to.re "i"))))))) (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 3) (re.union (re.++ (str.to.re "") (re.++ (str.to.re "\u{27}") (re.++ (str.to.re "\u{27}") (str.to.re "\u{27}")))) (str.to.re ""))) (re.++ ((_ re.capture 4) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (_ re.reference 3)))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
