;;<\/(strong|em|ins|del|q|code)>(\s*?)<\1>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.union (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "r") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (str.to.re "g")))))) (re.++ (str.to.re "e") (str.to.re "m"))) (re.++ (str.to.re "i") (re.++ (str.to.re "n") (str.to.re "s")))) (re.++ (str.to.re "d") (re.++ (str.to.re "e") (str.to.re "l")))) (str.to.re "q")) (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "d") (str.to.re "e")))))) (re.++ (str.to.re ">") (re.++ ((_ re.capture 2) (re.*? (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) (re.++ (str.to.re "<") (re.++ (_ re.reference 1) (str.to.re ">")))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
