;;([a-zA-Z]{1,})\=2\;console\.log\(\1\)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) ((_ re.loop 0 1) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (str.to.re "=") (re.++ (str.to.re "2") (re.++ (str.to.re ";") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (re.++ (str.to.re "s") (re.++ (str.to.re "o") (re.++ (str.to.re "l") (re.++ (str.to.re "e") (re.++ (str.to.re ".") (re.++ (str.to.re "l") (re.++ (str.to.re "o") (re.++ (str.to.re "g") (re.++ (str.to.re "(") (re.++ (_ re.reference 1) (str.to.re ")")))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
