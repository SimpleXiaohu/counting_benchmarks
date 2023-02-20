;;(?:\d+(?:\.\d+)?)|(?:[a-zA-Z_]\w*)|(?:(['"`]).*?\1)|[\(\)\[\[\{\}]|(\S)\2*

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.union (re.union (re.union (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (str.to.re "_"))) (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_"))))))) (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{27}") (re.union (str.to.re "\u{22}") (str.to.re "`")))) (re.++ (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (_ re.reference 1)))) (re.union (str.to.re "(") (re.union (str.to.re ")") (re.union (str.to.re "[") (re.union (str.to.re "[") (re.union (str.to.re "{") (str.to.re "}"))))))) (re.++ ((_ re.capture 2) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))) (re.* (_ re.reference 2)))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
