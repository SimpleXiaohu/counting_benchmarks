;;<(Local|Canonical)ID\s*?>(.*?)<\/\1ID\s*?>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "L") (re.++ (str.to.re "o") (re.++ (str.to.re "c") (re.++ (str.to.re "a") (str.to.re "l"))))) (re.++ (str.to.re "C") (re.++ (str.to.re "a") (re.++ (str.to.re "n") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (re.++ (str.to.re "i") (re.++ (str.to.re "c") (re.++ (str.to.re "a") (str.to.re "l"))))))))))) (re.++ (str.to.re "I") (re.++ (str.to.re "D") (re.++ (re.*? (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re ">") (re.++ ((_ re.capture 2) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (re.++ (str.to.re "I") (re.++ (str.to.re "D") (re.++ (re.*? (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (str.to.re ">")))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
