;;<([a-z]+) style="font-weight: normal;">([\w\W]*?)<\/\1>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (re.+ (re.range "a" "z"))) (re.++ (str.to.re " ") (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "y") (re.++ (str.to.re "l") (re.++ (str.to.re "e") (re.++ (str.to.re "=") (re.++ (str.to.re "\u{22}") (re.++ (str.to.re "f") (re.++ (str.to.re "o") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (re.++ (str.to.re "-") (re.++ (str.to.re "w") (re.++ (str.to.re "e") (re.++ (str.to.re "i") (re.++ (str.to.re "g") (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re ":") (re.++ (str.to.re " ") (re.++ (str.to.re "n") (re.++ (str.to.re "o") (re.++ (str.to.re "r") (re.++ (str.to.re "m") (re.++ (str.to.re "a") (re.++ (str.to.re "l") (re.++ (str.to.re ";") (re.++ (str.to.re "\u{22}") (re.++ (str.to.re ">") (re.++ ((_ re.capture 2) (re.*? (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "A" "Z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "0" "9")) (re.diff (re.range "\x01" "\xff") (str.to.re "_")))))))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (str.to.re ">"))))))))))))))))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
