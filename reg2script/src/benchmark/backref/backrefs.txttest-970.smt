;;^\/\*!\n \* this is a copyright block\n \*\/\n;?!function\(\)\{var ([a-z])="str";return \1\+"str"\}\(\),\n?\/\*!\n \* this is another copyright block\n \*\/\n!function\(\)\{var ([a-z])="str";return \2\+"str"\}\(\);?$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ (re.++ re.begin-anchor (re.++ (str.to.re "/") (re.++ (str.to.re "*") (re.++ (str.to.re "!") (re.++ (str.to.re "\u{0a}") (re.++ (str.to.re " ") (re.++ (str.to.re "*") (re.++ (str.to.re " ") (re.++ (str.to.re "t") (re.++ (str.to.re "h") (re.++ (str.to.re "i") (re.++ (str.to.re "s") (re.++ (str.to.re " ") (re.++ (str.to.re "i") (re.++ (str.to.re "s") (re.++ (str.to.re " ") (re.++ (str.to.re "a") (re.++ (str.to.re " ") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "p") (re.++ (str.to.re "y") (re.++ (str.to.re "r") (re.++ (str.to.re "i") (re.++ (str.to.re "g") (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re " ") (re.++ (str.to.re "b") (re.++ (str.to.re "l") (re.++ (str.to.re "o") (re.++ (str.to.re "c") (re.++ (str.to.re "k") (re.++ (str.to.re "\u{0a}") (re.++ (str.to.re " ") (re.++ (str.to.re "*") (re.++ (str.to.re "/") (re.++ (str.to.re "\u{0a}") (re.++ (re.opt (str.to.re ";")) (re.++ (str.to.re "!") (re.++ (str.to.re "f") (re.++ (str.to.re "u") (re.++ (str.to.re "n") (re.++ (str.to.re "c") (re.++ (str.to.re "t") (re.++ (str.to.re "i") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (re.++ (str.to.re "(") (re.++ (str.to.re ")") (re.++ (str.to.re "{") (re.++ (str.to.re "v") (re.++ (str.to.re "a") (re.++ (str.to.re "r") (re.++ (str.to.re " ") (re.++ ((_ re.capture 1) (re.range "a" "z")) (re.++ (str.to.re "=") (re.++ (str.to.re "\u{22}") (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "r") (re.++ (str.to.re "\u{22}") (re.++ (str.to.re ";") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "t") (re.++ (str.to.re "u") (re.++ (str.to.re "r") (re.++ (str.to.re "n") (re.++ (str.to.re " ") (re.++ (_ re.reference 1) (re.++ (str.to.re "+") (re.++ (str.to.re "\u{22}") (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "r") (re.++ (str.to.re "\u{22}") (re.++ (str.to.re "}") (re.++ (str.to.re "(") (str.to.re ")")))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (re.++ (str.to.re ",") (re.++ (re.opt (str.to.re "\u{0a}")) (re.++ (str.to.re "/") (re.++ (str.to.re "*") (re.++ (str.to.re "!") (re.++ (str.to.re "\u{0a}") (re.++ (str.to.re " ") (re.++ (str.to.re "*") (re.++ (str.to.re " ") (re.++ (str.to.re "t") (re.++ (str.to.re "h") (re.++ (str.to.re "i") (re.++ (str.to.re "s") (re.++ (str.to.re " ") (re.++ (str.to.re "i") (re.++ (str.to.re "s") (re.++ (str.to.re " ") (re.++ (str.to.re "a") (re.++ (str.to.re "n") (re.++ (str.to.re "o") (re.++ (str.to.re "t") (re.++ (str.to.re "h") (re.++ (str.to.re "e") (re.++ (str.to.re "r") (re.++ (str.to.re " ") (re.++ (str.to.re "c") (re.++ (str.to.re "o") (re.++ (str.to.re "p") (re.++ (str.to.re "y") (re.++ (str.to.re "r") (re.++ (str.to.re "i") (re.++ (str.to.re "g") (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re " ") (re.++ (str.to.re "b") (re.++ (str.to.re "l") (re.++ (str.to.re "o") (re.++ (str.to.re "c") (re.++ (str.to.re "k") (re.++ (str.to.re "\u{0a}") (re.++ (str.to.re " ") (re.++ (str.to.re "*") (re.++ (str.to.re "/") (re.++ (str.to.re "\u{0a}") (re.++ (str.to.re "!") (re.++ (str.to.re "f") (re.++ (str.to.re "u") (re.++ (str.to.re "n") (re.++ (str.to.re "c") (re.++ (str.to.re "t") (re.++ (str.to.re "i") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (re.++ (str.to.re "(") (re.++ (str.to.re ")") (re.++ (str.to.re "{") (re.++ (str.to.re "v") (re.++ (str.to.re "a") (re.++ (str.to.re "r") (re.++ (str.to.re " ") (re.++ ((_ re.capture 2) (re.range "a" "z")) (re.++ (str.to.re "=") (re.++ (str.to.re "\u{22}") (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "r") (re.++ (str.to.re "\u{22}") (re.++ (str.to.re ";") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "t") (re.++ (str.to.re "u") (re.++ (str.to.re "r") (re.++ (str.to.re "n") (re.++ (str.to.re " ") (re.++ (_ re.reference 2) (re.++ (str.to.re "+") (re.++ (str.to.re "\u{22}") (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "r") (re.++ (str.to.re "\u{22}") (re.++ (str.to.re "}") (re.++ (str.to.re "(") (re.++ (str.to.re ")") (re.opt (str.to.re ";"))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)