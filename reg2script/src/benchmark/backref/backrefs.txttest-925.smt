;;('|")(.*?)(\?__\w+)\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ ((_ re.capture 2) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ ((_ re.capture 3) (re.++ (str.to.re "?") (re.++ (str.to.re "_") (re.++ (str.to.re "_") (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_"))))))))) (_ re.reference 1)))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
