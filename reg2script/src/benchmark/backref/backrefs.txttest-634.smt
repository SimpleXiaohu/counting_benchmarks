;;("|')?template\1[\s\r\n]*:

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}")))) (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (str.to.re "m") (re.++ (str.to.re "p") (re.++ (str.to.re "l") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (_ re.reference 1) (re.++ (re.* (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.union (str.to.re "\u{0d}") (str.to.re "\u{0a}")))) (str.to.re ":")))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
