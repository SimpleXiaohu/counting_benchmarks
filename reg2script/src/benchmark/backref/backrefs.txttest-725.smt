;;(["'])match\1\s*?:\s*?(["'])\<match function\>\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ (str.to.re "m") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ (_ re.reference 1) (re.++ (re.*? (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re ":") (re.++ (re.*? (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 2) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ (str.to.re "<") (re.++ (str.to.re "m") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ (str.to.re " ") (re.++ (str.to.re "f") (re.++ (str.to.re "u") (re.++ (str.to.re "n") (re.++ (str.to.re "c") (re.++ (str.to.re "t") (re.++ (str.to.re "i") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (re.++ (str.to.re ">") (_ re.reference 2)))))))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
