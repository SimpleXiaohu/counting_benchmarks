;;url\s*\(\s*(['|"]?)([^\/]?[\w\-\/\.]*\.(?:png|jpg|gif|jpeg|ico|cur))(\?[^\?'|")\s]*)?\1\s*\)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "u") (re.++ (str.to.re "r") (re.++ (str.to.re "l") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "(") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 1) (re.opt (re.union (str.to.re "\u{27}") (re.union (str.to.re "|") (str.to.re "\u{22}"))))) (re.++ ((_ re.capture 2) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (str.to.re "/"))) (re.++ (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.union (str.to.re "-") (re.union (str.to.re "/") (str.to.re "."))))) (re.++ (str.to.re ".") (re.union (re.union (re.union (re.union (re.union (re.++ (str.to.re "p") (re.++ (str.to.re "n") (str.to.re "g"))) (re.++ (str.to.re "j") (re.++ (str.to.re "p") (str.to.re "g")))) (re.++ (str.to.re "g") (re.++ (str.to.re "i") (str.to.re "f")))) (re.++ (str.to.re "j") (re.++ (str.to.re "p") (re.++ (str.to.re "e") (str.to.re "g"))))) (re.++ (str.to.re "i") (re.++ (str.to.re "c") (str.to.re "o")))) (re.++ (str.to.re "c") (re.++ (str.to.re "u") (str.to.re "r")))))))) (re.++ (re.opt ((_ re.capture 3) (re.++ (str.to.re "?") (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "?")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "|")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re ")")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))))))))) (re.++ (_ re.reference 1) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (str.to.re ")")))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
