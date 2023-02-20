;;<(iframe|embed)[^>]+>.*<\/\1>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "i") (re.++ (str.to.re "f") (re.++ (str.to.re "r") (re.++ (str.to.re "a") (re.++ (str.to.re "m") (str.to.re "e")))))) (re.++ (str.to.re "e") (re.++ (str.to.re "m") (re.++ (str.to.re "b") (re.++ (str.to.re "e") (str.to.re "d"))))))) (re.++ (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re ">"))) (re.++ (str.to.re ">") (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (str.to.re ">"))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
