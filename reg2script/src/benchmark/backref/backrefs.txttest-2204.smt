;;^(')s\/([^/]*)\/([^/]*)(\/(g?))?\1$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (str.to.re "\u{27}")) (re.++ (str.to.re "s") (re.++ (str.to.re "/") (re.++ ((_ re.capture 2) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "/")))) (re.++ (str.to.re "/") (re.++ ((_ re.capture 3) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "/")))) (re.++ (re.opt ((_ re.capture 4) (re.++ (str.to.re "/") ((_ re.capture 5) (re.opt (str.to.re "g")))))) (_ re.reference 1))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
