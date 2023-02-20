;;('|")(?:\\?.)*?\1|\w+

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ (re.*? (re.++ (re.opt (str.to.re "\\")) (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (_ re.reference 1))) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
