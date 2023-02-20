;;(src=|content=|href=)(["'])([^"']+)(\.jpg|\.png|\.gif|\.ico)\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (re.union (re.++ (str.to.re "s") (re.++ (str.to.re "r") (re.++ (str.to.re "c") (str.to.re "=")))) (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (str.to.re "="))))))))) (re.++ (str.to.re "h") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "f") (str.to.re "="))))))) (re.++ ((_ re.capture 2) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ ((_ re.capture 3) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}"))))) (re.++ ((_ re.capture 4) (re.union (re.union (re.union (re.++ (str.to.re ".") (re.++ (str.to.re "j") (re.++ (str.to.re "p") (str.to.re "g")))) (re.++ (str.to.re ".") (re.++ (str.to.re "p") (re.++ (str.to.re "n") (str.to.re "g"))))) (re.++ (str.to.re ".") (re.++ (str.to.re "g") (re.++ (str.to.re "i") (str.to.re "f"))))) (re.++ (str.to.re ".") (re.++ (str.to.re "i") (re.++ (str.to.re "c") (str.to.re "o")))))) (_ re.reference 2))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
