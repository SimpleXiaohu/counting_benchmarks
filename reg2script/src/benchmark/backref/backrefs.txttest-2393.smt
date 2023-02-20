;;(css|js)\/(style|script)\.(min\.)?\1[^'"]*

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "c") (re.++ (str.to.re "s") (str.to.re "s"))) (re.++ (str.to.re "j") (str.to.re "s")))) (re.++ (str.to.re "/") (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "y") (re.++ (str.to.re "l") (str.to.re "e"))))) (re.++ (str.to.re "s") (re.++ (str.to.re "c") (re.++ (str.to.re "r") (re.++ (str.to.re "i") (re.++ (str.to.re "p") (str.to.re "t")))))))) (re.++ (str.to.re ".") (re.++ (re.opt ((_ re.capture 3) (re.++ (str.to.re "m") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (str.to.re ".")))))) (re.++ (_ re.reference 1) (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)