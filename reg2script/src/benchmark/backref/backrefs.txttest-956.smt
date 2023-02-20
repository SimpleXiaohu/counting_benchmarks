;;(\\ )|(\\#MARCO)|\{(=+)\{(.*?)\}\3\}|\{\{(.*?)\}\}|(\{\s*|\s*\}|\s*\|\s*)|(`+|\*+|~+)(.*?)\7

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.union (re.union (re.union (re.union ((_ re.capture 1) (re.++ (str.to.re "\\") (str.to.re " "))) ((_ re.capture 2) (re.++ (str.to.re "\\") (re.++ (str.to.re "#") (re.++ (str.to.re "M") (re.++ (str.to.re "A") (re.++ (str.to.re "R") (re.++ (str.to.re "C") (str.to.re "O"))))))))) (re.++ (str.to.re "{") (re.++ ((_ re.capture 3) (re.+ (str.to.re "="))) (re.++ (str.to.re "{") (re.++ ((_ re.capture 4) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "}") (re.++ (_ re.reference 3) (str.to.re "}")))))))) (re.++ (str.to.re "{") (re.++ (str.to.re "{") (re.++ ((_ re.capture 5) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "}") (str.to.re "}")))))) ((_ re.capture 6) (re.union (re.union (re.++ (str.to.re "{") (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (str.to.re "}"))) (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "|") (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))))))) (re.++ ((_ re.capture 7) (re.union (re.union (re.+ (str.to.re "`")) (re.+ (str.to.re "*"))) (re.+ (str.to.re "~")))) (re.++ ((_ re.capture 8) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (_ re.reference 7)))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
