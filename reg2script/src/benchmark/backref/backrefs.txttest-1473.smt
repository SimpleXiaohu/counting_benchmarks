;;(selected)\=(\'|\")\1\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "s") (re.++ (str.to.re "e") (re.++ (str.to.re "l") (re.++ (str.to.re "e") (re.++ (str.to.re "c") (re.++ (str.to.re "t") (re.++ (str.to.re "e") (str.to.re "d"))))))))) (re.++ (str.to.re "=") (re.++ ((_ re.capture 2) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ (_ re.reference 1) (_ re.reference 2))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
