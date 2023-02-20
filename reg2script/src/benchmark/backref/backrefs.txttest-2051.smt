;;(s\d\d)\.php\?shopid=\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "s") (re.++ (re.range "0" "9") (re.range "0" "9")))) (re.++ (str.to.re ".") (re.++ (str.to.re "p") (re.++ (str.to.re "h") (re.++ (str.to.re "p") (re.++ (str.to.re "?") (re.++ (str.to.re "s") (re.++ (str.to.re "h") (re.++ (str.to.re "o") (re.++ (str.to.re "p") (re.++ (str.to.re "i") (re.++ (str.to.re "d") (re.++ (str.to.re "=") (_ re.reference 1)))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
