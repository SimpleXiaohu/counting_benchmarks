;;\/(.+)?components\/(.*?([^\/]+))\/\2(\.js)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "/") (re.++ (re.opt ((_ re.capture 1) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))) (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (re.++ (str.to.re "p") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (re.++ (str.to.re "s") (re.++ (str.to.re "/") (re.++ ((_ re.capture 2) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) ((_ re.capture 3) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "/")))))) (re.++ (str.to.re "/") (re.++ (_ re.reference 2) ((_ re.capture 4) (re.++ (str.to.re ".") (re.++ (str.to.re "j") (str.to.re "s")))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
