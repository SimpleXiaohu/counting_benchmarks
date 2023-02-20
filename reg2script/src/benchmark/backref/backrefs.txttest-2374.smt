;;^\s*\[([^\[\]]+)\]:\s*(\S+)(?:\s+(?:(['"])(.*)\3|\((.*?)\)))?\n?

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "[") (re.++ ((_ re.capture 1) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "[")) (re.diff (re.range "\x01" "\xff") (str.to.re "]"))))) (re.++ (str.to.re "]") (re.++ (str.to.re ":") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 2) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))))) (re.++ (re.opt (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.union (re.++ ((_ re.capture 3) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ ((_ re.capture 4) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (_ re.reference 3))) (re.++ (str.to.re "(") (re.++ ((_ re.capture 5) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (str.to.re ")")))))) (re.++ (re.opt (str.to.re "\u{0a}")) re.all))))))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
