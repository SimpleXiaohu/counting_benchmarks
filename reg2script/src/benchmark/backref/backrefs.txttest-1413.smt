;;(url\()(["']?)(.+?)\2(\))

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "u") (re.++ (str.to.re "r") (re.++ (str.to.re "l") (str.to.re "("))))) (re.++ ((_ re.capture 2) (re.opt (re.union (str.to.re "\u{22}") (str.to.re "\u{27}")))) (re.++ ((_ re.capture 3) (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (_ re.reference 2) ((_ re.capture 4) (str.to.re ")")))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
