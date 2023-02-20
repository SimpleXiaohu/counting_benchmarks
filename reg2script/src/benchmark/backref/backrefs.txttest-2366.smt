;;<(pre|kbd|code|style|script|textarea)[^>]*>.*?<\/\1>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.union (re.++ (str.to.re "p") (re.++ (str.to.re "r") (str.to.re "e"))) (re.++ (str.to.re "k") (re.++ (str.to.re "b") (str.to.re "d")))) (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "d") (str.to.re "e"))))) (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "y") (re.++ (str.to.re "l") (str.to.re "e")))))) (re.++ (str.to.re "s") (re.++ (str.to.re "c") (re.++ (str.to.re "r") (re.++ (str.to.re "i") (re.++ (str.to.re "p") (str.to.re "t"))))))) (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (str.to.re "x") (re.++ (str.to.re "t") (re.++ (str.to.re "a") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (str.to.re "a")))))))))) (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re ">"))) (re.++ (str.to.re ">") (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (str.to.re ">"))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
