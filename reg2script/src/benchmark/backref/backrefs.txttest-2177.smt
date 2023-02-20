;;(["'])sass(-angular)?(:.+?)\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ (str.to.re "s") (re.++ (str.to.re "a") (re.++ (str.to.re "s") (re.++ (str.to.re "s") (re.++ (re.opt ((_ re.capture 2) (re.++ (str.to.re "-") (re.++ (str.to.re "a") (re.++ (str.to.re "n") (re.++ (str.to.re "g") (re.++ (str.to.re "u") (re.++ (str.to.re "l") (re.++ (str.to.re "a") (str.to.re "r")))))))))) (re.++ ((_ re.capture 3) (re.++ (str.to.re ":") (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))) (_ re.reference 1)))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
