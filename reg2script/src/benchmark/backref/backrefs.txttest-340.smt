;;^\/([\.0-9]+)\/([^\\\/]+)\/(main|index|\2)\.css$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (str.to.re "/") (re.++ ((_ re.capture 1) (re.+ (re.union (str.to.re ".") (re.range "0" "9")))) (re.++ (str.to.re "/") (re.++ ((_ re.capture 2) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\\")) (re.diff (re.range "\x01" "\xff") (str.to.re "/"))))) (re.++ (str.to.re "/") (re.++ ((_ re.capture 3) (re.union (re.union (re.++ (str.to.re "m") (re.++ (str.to.re "a") (re.++ (str.to.re "i") (str.to.re "n")))) (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re "d") (re.++ (str.to.re "e") (str.to.re "x")))))) (_ re.reference 2))) (re.++ (str.to.re ".") (re.++ (str.to.re "c") (re.++ (str.to.re "s") (str.to.re "s"))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
