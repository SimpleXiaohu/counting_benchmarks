;;\.provide\((["'])([a-zA-Z0-9-\/.~]+)\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re ".") (re.++ (str.to.re "p") (re.++ (str.to.re "r") (re.++ (str.to.re "o") (re.++ (str.to.re "v") (re.++ (str.to.re "i") (re.++ (str.to.re "d") (re.++ (str.to.re "e") (re.++ (str.to.re "(") (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ ((_ re.capture 2) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to.re "-") (re.union (str.to.re "/") (re.union (str.to.re ".") (str.to.re "~"))))))))) (_ re.reference 1)))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
