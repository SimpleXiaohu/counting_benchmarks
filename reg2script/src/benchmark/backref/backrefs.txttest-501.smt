;;<(b|i|var|tt|kbd|samp|u)>\$foo<\/\1>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.union (re.union (str.to.re "b") (str.to.re "i")) (re.++ (str.to.re "v") (re.++ (str.to.re "a") (str.to.re "r")))) (re.++ (str.to.re "t") (str.to.re "t"))) (re.++ (str.to.re "k") (re.++ (str.to.re "b") (str.to.re "d")))) (re.++ (str.to.re "s") (re.++ (str.to.re "a") (re.++ (str.to.re "m") (str.to.re "p"))))) (str.to.re "u"))) (re.++ (str.to.re ">") (re.++ (str.to.re "$") (re.++ (str.to.re "f") (re.++ (str.to.re "o") (re.++ (str.to.re "o") (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (str.to.re ">"))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
