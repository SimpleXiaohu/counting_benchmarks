;;<(mi|mo|mn) d='(.*?)'><\/\1>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (re.union (re.union (re.++ (str.to.re "m") (str.to.re "i")) (re.++ (str.to.re "m") (str.to.re "o"))) (re.++ (str.to.re "m") (str.to.re "n")))) (re.++ (str.to.re " ") (re.++ (str.to.re "d") (re.++ (str.to.re "=") (re.++ (str.to.re "\u{27}") (re.++ ((_ re.capture 2) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "\u{27}") (re.++ (str.to.re ">") (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (str.to.re ">"))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
