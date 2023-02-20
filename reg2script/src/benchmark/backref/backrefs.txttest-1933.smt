;;(.*\/)?([^\/]+)\.reel\/\2$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ (re.++ (re.*? re.allchar) (re.opt ((_ re.capture 1) (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re "/"))))) (re.++ ((_ re.capture 2) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "/")))) (re.++ (str.to.re ".") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "e") (re.++ (str.to.re "l") (re.++ (str.to.re "/") (_ re.reference 2))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
