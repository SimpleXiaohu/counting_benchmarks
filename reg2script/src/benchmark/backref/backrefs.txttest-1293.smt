;;<(\w+).*type=[\"\']text\/(\S+)[\"\'](?:\s+[^>]*)?>([\s\S]*?)(?:<\/\1>[^\"\']|<\/\1>$)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ (re.*? re.allchar) (str.to.re "<")) (re.++ ((_ re.capture 1) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (str.to.re "t") (re.++ (str.to.re "y") (re.++ (str.to.re "p") (re.++ (str.to.re "e") (re.++ (str.to.re "=") (re.++ (re.union (str.to.re "\u{22}") (str.to.re "\u{27}")) (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (str.to.re "x") (re.++ (str.to.re "t") (re.++ (str.to.re "/") (re.++ ((_ re.capture 2) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))))) (re.++ (re.union (str.to.re "\u{22}") (str.to.re "\u{27}")) (re.++ (re.opt (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re ">"))))) (re.++ (str.to.re ">") (re.++ ((_ re.capture 3) (re.*? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))) (re.union (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (re.++ (str.to.re ">") (re.++ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}"))) re.all))))) (re.++ (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (str.to.re ">")))) re.end-anchor)))))))))))))))))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
