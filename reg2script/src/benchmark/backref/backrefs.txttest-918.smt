;;^<([^>]+)>(.*)<\/\1>$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re ">")))) (re.++ (str.to.re ">") (re.++ ((_ re.capture 2) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (str.to.re ">"))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
