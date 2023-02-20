;;<(p|div)[^>]*>(<br\/?>|&nbsp;)<\/\1>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (re.union (str.to.re "p") (re.++ (str.to.re "d") (re.++ (str.to.re "i") (str.to.re "v"))))) (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re ">"))) (re.++ (str.to.re ">") (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "<") (re.++ (str.to.re "b") (re.++ (str.to.re "r") (re.++ (re.opt (str.to.re "/")) (str.to.re ">"))))) (re.++ (str.to.re "&") (re.++ (str.to.re "n") (re.++ (str.to.re "b") (re.++ (str.to.re "s") (re.++ (str.to.re "p") (str.to.re ";")))))))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (str.to.re ">"))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
