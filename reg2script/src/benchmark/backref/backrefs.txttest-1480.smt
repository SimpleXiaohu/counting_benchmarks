;;<a.*(?:data-|\s)href=(['"]?)\s*([^"']+?)\s*\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ (str.to.re "a") (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (re.union (re.++ (str.to.re "d") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (str.to.re "a") (str.to.re "-"))))) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "h") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "f") (re.++ (str.to.re "=") (re.++ ((_ re.capture 1) (re.opt (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")))) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 2) (re.+? (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}"))))) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (_ re.reference 1)))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
