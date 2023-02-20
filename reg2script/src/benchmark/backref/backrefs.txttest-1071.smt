;;\/pages\/.+?([a-z0-9-]+)\/\1.js

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "/") (re.++ (str.to.re "p") (re.++ (str.to.re "a") (re.++ (str.to.re "g") (re.++ (str.to.re "e") (re.++ (str.to.re "s") (re.++ (str.to.re "/") (re.++ (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ ((_ re.capture 1) (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to.re "-"))))) (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (re.++ (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (re.++ (str.to.re "j") (str.to.re "s")))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
