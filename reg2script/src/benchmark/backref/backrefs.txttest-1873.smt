;;MathLib\.([^ ]+) = \1;

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "M") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "h") (re.++ (str.to.re "L") (re.++ (str.to.re "i") (re.++ (str.to.re "b") (re.++ (str.to.re ".") (re.++ ((_ re.capture 1) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re " ")))) (re.++ (str.to.re " ") (re.++ (str.to.re "=") (re.++ (str.to.re " ") (re.++ (_ re.reference 1) (str.to.re ";")))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
