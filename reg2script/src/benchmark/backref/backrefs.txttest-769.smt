;;<!--#\s*include\s+(file|virtual)=(['"])([^\r\n]+?)\2(\s+domain=(['"])([^\r\n]+?)\5)?\s*-->

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ (str.to.re "!") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re "#") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re "c") (re.++ (str.to.re "l") (re.++ (str.to.re "u") (re.++ (str.to.re "d") (re.++ (str.to.re "e") (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 1) (re.union (re.++ (str.to.re "f") (re.++ (str.to.re "i") (re.++ (str.to.re "l") (str.to.re "e")))) (re.++ (str.to.re "v") (re.++ (str.to.re "i") (re.++ (str.to.re "r") (re.++ (str.to.re "t") (re.++ (str.to.re "u") (re.++ (str.to.re "a") (str.to.re "l"))))))))) (re.++ (str.to.re "=") (re.++ ((_ re.capture 2) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ ((_ re.capture 3) (re.+? (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}"))))) (re.++ (_ re.reference 2) (re.++ (re.opt ((_ re.capture 4) (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "d") (re.++ (str.to.re "o") (re.++ (str.to.re "m") (re.++ (str.to.re "a") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re "=") (re.++ ((_ re.capture 5) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ ((_ re.capture 6) (re.+? (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}"))))) (_ re.reference 5))))))))))))) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "-") (re.++ (str.to.re "-") (str.to.re ">")))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
