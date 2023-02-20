;;(\nwp\/wp-content\/themes\/\*\*\/)img\1fonts\1js\1css\1media\n

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "\u{0a}") (re.++ (str.to.re "w") (re.++ (str.to.re "p") (re.++ (str.to.re "/") (re.++ (str.to.re "w") (re.++ (str.to.re "p") (re.++ (str.to.re "-") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (re.++ (str.to.re "/") (re.++ (str.to.re "t") (re.++ (str.to.re "h") (re.++ (str.to.re "e") (re.++ (str.to.re "m") (re.++ (str.to.re "e") (re.++ (str.to.re "s") (re.++ (str.to.re "/") (re.++ (str.to.re "*") (re.++ (str.to.re "*") (str.to.re "/")))))))))))))))))))))))))) (re.++ (str.to.re "i") (re.++ (str.to.re "m") (re.++ (str.to.re "g") (re.++ (_ re.reference 1) (re.++ (str.to.re "f") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (re.++ (str.to.re "s") (re.++ (_ re.reference 1) (re.++ (str.to.re "j") (re.++ (str.to.re "s") (re.++ (_ re.reference 1) (re.++ (str.to.re "c") (re.++ (str.to.re "s") (re.++ (str.to.re "s") (re.++ (_ re.reference 1) (re.++ (str.to.re "m") (re.++ (str.to.re "e") (re.++ (str.to.re "d") (re.++ (str.to.re "i") (re.++ (str.to.re "a") (str.to.re "\u{0a}")))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
