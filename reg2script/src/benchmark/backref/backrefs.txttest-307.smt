;;\\?(?:(\+{3}|\${2})(.*?)\1|pass:([a-z,]*)\[(.*?[^\\])\])

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt (str.to.re "\\")) (re.union (re.++ ((_ re.capture 1) (re.union ((_ re.loop 0 3) (str.to.re "+")) ((_ re.loop 0 2) (str.to.re "$")))) (re.++ ((_ re.capture 2) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (_ re.reference 1))) (re.++ (str.to.re "p") (re.++ (str.to.re "a") (re.++ (str.to.re "s") (re.++ (str.to.re "s") (re.++ (str.to.re ":") (re.++ ((_ re.capture 3) (re.* (re.union (re.range "a" "z") (str.to.re ",")))) (re.++ (str.to.re "[") (re.++ ((_ re.capture 4) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.diff (re.range "\x01" "\xff") (str.to.re "\\")))) (str.to.re "]"))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)