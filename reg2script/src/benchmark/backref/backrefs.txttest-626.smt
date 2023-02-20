;;^\/src\/js\/business\/([^\/]+)\/\1\.(js|coffee|less|css|jpg|gif|png)$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (str.to.re "/") (re.++ (str.to.re "s") (re.++ (str.to.re "r") (re.++ (str.to.re "c") (re.++ (str.to.re "/") (re.++ (str.to.re "j") (re.++ (str.to.re "s") (re.++ (str.to.re "/") (re.++ (str.to.re "b") (re.++ (str.to.re "u") (re.++ (str.to.re "s") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re "e") (re.++ (str.to.re "s") (re.++ (str.to.re "s") (re.++ (str.to.re "/") (re.++ ((_ re.capture 1) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "/")))) (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (re.++ (str.to.re ".") ((_ re.capture 2) (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to.re "j") (str.to.re "s")) (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "f") (re.++ (str.to.re "f") (re.++ (str.to.re "e") (str.to.re "e"))))))) (re.++ (str.to.re "l") (re.++ (str.to.re "e") (re.++ (str.to.re "s") (str.to.re "s"))))) (re.++ (str.to.re "c") (re.++ (str.to.re "s") (str.to.re "s")))) (re.++ (str.to.re "j") (re.++ (str.to.re "p") (str.to.re "g")))) (re.++ (str.to.re "g") (re.++ (str.to.re "i") (str.to.re "f")))) (re.++ (str.to.re "p") (re.++ (str.to.re "n") (str.to.re "g"))))))))))))))))))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
