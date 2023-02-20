;;@?("""|"|')((\\|\n)?.)*?\1B?

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt (str.to.re "@")) (re.++ ((_ re.capture 1) (re.union (re.union (re.++ (str.to.re "\u{22}") (re.++ (str.to.re "\u{22}") (str.to.re "\u{22}"))) (str.to.re "\u{22}")) (str.to.re "\u{27}"))) (re.++ (re.*? ((_ re.capture 2) (re.++ (re.opt ((_ re.capture 3) (re.union (str.to.re "\\") (str.to.re "\u{0a}")))) (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))) (re.++ (_ re.reference 1) (re.opt (str.to.re "B")))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
