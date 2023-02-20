;;(?:href|src|url)[=|\(](['"])?(.+?)\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.union (re.union (re.++ (str.to.re "h") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (str.to.re "f")))) (re.++ (str.to.re "s") (re.++ (str.to.re "r") (str.to.re "c")))) (re.++ (str.to.re "u") (re.++ (str.to.re "r") (str.to.re "l")))) (re.++ (re.union (str.to.re "=") (re.union (str.to.re "|") (str.to.re "("))) (re.++ (re.opt ((_ re.capture 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")))) (re.++ ((_ re.capture 2) (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (_ re.reference 1))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
