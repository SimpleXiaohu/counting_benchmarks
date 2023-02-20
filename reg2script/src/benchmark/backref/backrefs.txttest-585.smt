;;\-|\s|\.|\<|\>|\(|\)|\{|\}|\[|\}|\||\\|\/|\:|\;|\"|\'|\,|\?|\!|\@|\3|\%|\^|\&|\*|\+|\=|\`|\~

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to.re "-") (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (str.to.re ".")) (str.to.re "<")) (str.to.re ">")) (str.to.re "(")) (str.to.re ")")) (str.to.re "{")) (str.to.re "}")) (str.to.re "[")) (str.to.re "}")) (str.to.re "|")) (str.to.re "\\")) (str.to.re "/")) (str.to.re ":")) (str.to.re ";")) (str.to.re "\u{22}")) (str.to.re "\u{27}")) (str.to.re ",")) (str.to.re "?")) (str.to.re "!")) (str.to.re "@")) (_ re.reference 3)) (str.to.re "%")) (str.to.re "^")) (str.to.re "&")) (str.to.re "*")) (str.to.re "+")) (str.to.re "=")) (str.to.re "`")) (str.to.re "~")) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
