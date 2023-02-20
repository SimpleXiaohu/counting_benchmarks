;;(([a-zA-Z])\2*)|(\((('.*?'|\(.*?\)|.)*?)\))|('(.*?)')

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.union ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (_ re.reference 2)))) ((_ re.capture 3) (re.++ (str.to.re "(") (re.++ ((_ re.capture 4) (re.*? ((_ re.capture 5) (re.union (re.union (re.++ (str.to.re "\u{27}") (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re "\u{27}"))) (re.++ (str.to.re "(") (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re ")")))) (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))))) (str.to.re ")"))))) ((_ re.capture 6) (re.++ (str.to.re "\u{27}") (re.++ ((_ re.capture 7) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (str.to.re "\u{27}"))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
