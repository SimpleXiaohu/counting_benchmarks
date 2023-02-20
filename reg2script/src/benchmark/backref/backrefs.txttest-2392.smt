;;(<img .*?src=)("|')(.*?)(\/[^\/]+?\.)(jpg|png|gif)\s*\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "<") (re.++ (str.to.re "i") (re.++ (str.to.re "m") (re.++ (str.to.re "g") (re.++ (str.to.re " ") (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (str.to.re "s") (re.++ (str.to.re "r") (re.++ (str.to.re "c") (str.to.re "="))))))))))) (re.++ ((_ re.capture 2) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ ((_ re.capture 3) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ ((_ re.capture 4) (re.++ (str.to.re "/") (re.++ (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "/"))) (str.to.re ".")))) (re.++ ((_ re.capture 5) (re.union (re.union (re.++ (str.to.re "j") (re.++ (str.to.re "p") (str.to.re "g"))) (re.++ (str.to.re "p") (re.++ (str.to.re "n") (str.to.re "g")))) (re.++ (str.to.re "g") (re.++ (str.to.re "i") (str.to.re "f"))))) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (_ re.reference 2))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
