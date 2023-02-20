;;<img[^>]*?src=("|')http:\/\/[^>]*?\.?feedsportal\.com\/c\/[^>]*?\1.*?>.*$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ (re.++ (re.*? re.allchar) (str.to.re "<")) (re.++ (str.to.re "i") (re.++ (str.to.re "m") (re.++ (str.to.re "g") (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re ">"))) (re.++ (str.to.re "s") (re.++ (str.to.re "r") (re.++ (str.to.re "c") (re.++ (str.to.re "=") (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (str.to.re ":") (re.++ (str.to.re "/") (re.++ (str.to.re "/") (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re ">"))) (re.++ (re.opt (str.to.re ".")) (re.++ (str.to.re "f") (re.++ (str.to.re "e") (re.++ (str.to.re "e") (re.++ (str.to.re "d") (re.++ (str.to.re "s") (re.++ (str.to.re "p") (re.++ (str.to.re "o") (re.++ (str.to.re "r") (re.++ (str.to.re "t") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re ".") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (re.++ (str.to.re "/") (re.++ (str.to.re "c") (re.++ (str.to.re "/") (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re ">"))) (re.++ (_ re.reference 1) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (str.to.re ">") (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))))))))))))))))))))))))))))))))))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
