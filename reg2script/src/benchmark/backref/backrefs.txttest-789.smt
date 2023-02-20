;;http-equiv\s*=\s*(['"])Content-Security-Policy\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (str.to.re "-") (re.++ (str.to.re "e") (re.++ (str.to.re "q") (re.++ (str.to.re "u") (re.++ (str.to.re "i") (re.++ (str.to.re "v") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "=") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ (str.to.re "C") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (re.++ (str.to.re "-") (re.++ (str.to.re "S") (re.++ (str.to.re "e") (re.++ (str.to.re "c") (re.++ (str.to.re "u") (re.++ (str.to.re "r") (re.++ (str.to.re "i") (re.++ (str.to.re "t") (re.++ (str.to.re "y") (re.++ (str.to.re "-") (re.++ (str.to.re "P") (re.++ (str.to.re "o") (re.++ (str.to.re "l") (re.++ (str.to.re "i") (re.++ (str.to.re "c") (re.++ (str.to.re "y") (_ re.reference 1)))))))))))))))))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
