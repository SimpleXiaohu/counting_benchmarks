;;<img .*?src=(['"])(.*?)\1.*?>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ (str.to.re "i") (re.++ (str.to.re "m") (re.++ (str.to.re "g") (re.++ (str.to.re " ") (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (str.to.re "s") (re.++ (str.to.re "r") (re.++ (str.to.re "c") (re.++ (str.to.re "=") (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ ((_ re.capture 2) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (_ re.reference 1) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re ">"))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)