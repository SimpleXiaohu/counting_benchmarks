;;((?:class|className|cssClass|iconClass)[\s\r\n]*=[\s\r\n]*(['"]*)<%=)([^<>%]*)(%>\2)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (re.union (re.union (re.union (re.++ (str.to.re "c") (re.++ (str.to.re "l") (re.++ (str.to.re "a") (re.++ (str.to.re "s") (str.to.re "s"))))) (re.++ (str.to.re "c") (re.++ (str.to.re "l") (re.++ (str.to.re "a") (re.++ (str.to.re "s") (re.++ (str.to.re "s") (re.++ (str.to.re "N") (re.++ (str.to.re "a") (re.++ (str.to.re "m") (str.to.re "e")))))))))) (re.++ (str.to.re "c") (re.++ (str.to.re "s") (re.++ (str.to.re "s") (re.++ (str.to.re "C") (re.++ (str.to.re "l") (re.++ (str.to.re "a") (re.++ (str.to.re "s") (str.to.re "s"))))))))) (re.++ (str.to.re "i") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (re.++ (str.to.re "C") (re.++ (str.to.re "l") (re.++ (str.to.re "a") (re.++ (str.to.re "s") (str.to.re "s")))))))))) (re.++ (re.* (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.union (str.to.re "\u{0d}") (str.to.re "\u{0a}")))) (re.++ (str.to.re "=") (re.++ (re.* (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.union (str.to.re "\u{0d}") (str.to.re "\u{0a}")))) (re.++ ((_ re.capture 2) (re.* (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")))) (re.++ (str.to.re "<") (re.++ (str.to.re "%") (str.to.re "="))))))))) (re.++ ((_ re.capture 3) (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "<")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re ">")) (re.diff (re.range "\x01" "\xff") (str.to.re "%")))))) ((_ re.capture 4) (re.++ (str.to.re "%") (re.++ (str.to.re ">") (_ re.reference 2)))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
