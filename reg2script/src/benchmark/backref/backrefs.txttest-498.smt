;;(\n\n)?¨(K|G)\d+\2(\n\n)?

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt ((_ re.capture 1) (re.++ (str.to.re "\u{0a}") (str.to.re "\u{0a}")))) (re.++ (str.to.re "¨") (re.++ ((_ re.capture 2) (re.union (str.to.re "K") (str.to.re "G"))) (re.++ (re.+ (re.range "0" "9")) (re.++ (_ re.reference 2) (re.opt ((_ re.capture 3) (re.++ (str.to.re "\u{0a}") (str.to.re "\u{0a}"))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
