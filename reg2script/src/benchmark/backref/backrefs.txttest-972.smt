;;( style=(["'])[^"']*\2)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ ((_ re.capture 1) (re.++ (str.to.re " ") (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "y") (re.++ (str.to.re "l") (re.++ (str.to.re "e") (re.++ (str.to.re "=") (re.++ ((_ re.capture 2) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")))) (_ re.reference 2))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
