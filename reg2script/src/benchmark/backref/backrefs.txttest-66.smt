;;<(.*?)( +([\w_\-]*)=(\"|')(.*?)\4)*>((.|\s)*?)<\/\1>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (re.* ((_ re.capture 2) (re.++ (re.+ (str.to.re " ")) (re.++ ((_ re.capture 3) (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.union (str.to.re "_") (str.to.re "-"))))) (re.++ (str.to.re "=") (re.++ ((_ re.capture 4) (re.union (str.to.re "\u{22}") (str.to.re "\u{27}"))) (re.++ ((_ re.capture 5) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (_ re.reference 4)))))))) (re.++ (str.to.re ">") (re.++ ((_ re.capture 6) (re.*? ((_ re.capture 7) (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))))))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (str.to.re ">"))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
