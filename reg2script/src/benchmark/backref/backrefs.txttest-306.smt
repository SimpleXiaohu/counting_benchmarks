;;.*((\/|\\)lib\2js\2.*?\.js)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (str.to.re "/") (str.to.re "\\"))) (re.++ (str.to.re "l") (re.++ (str.to.re "i") (re.++ (str.to.re "b") (re.++ (_ re.reference 2) (re.++ (str.to.re "j") (re.++ (str.to.re "s") (re.++ (_ re.reference 2) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (str.to.re ".") (re.++ (str.to.re "j") (str.to.re "s")))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
