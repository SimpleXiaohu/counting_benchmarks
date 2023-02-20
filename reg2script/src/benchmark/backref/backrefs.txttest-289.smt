;;^\/units\/([^\/]+)\/\1\.ejs$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (str.to.re "/") (re.++ (str.to.re "u") (re.++ (str.to.re "n") (re.++ (str.to.re "i") (re.++ (str.to.re "t") (re.++ (str.to.re "s") (re.++ (str.to.re "/") (re.++ ((_ re.capture 1) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "/")))) (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (re.++ (str.to.re ".") (re.++ (str.to.re "e") (re.++ (str.to.re "j") (str.to.re "s"))))))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
