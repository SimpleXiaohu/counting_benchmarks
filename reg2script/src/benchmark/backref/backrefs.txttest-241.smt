;;("|')(?:\\\\|\\?[^\\\r\n])*?\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ (re.*? (re.union (re.++ (str.to.re "\\") (str.to.re "\\")) (re.++ (re.opt (str.to.re "\\")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\\")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}"))))))) (_ re.reference 1))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
