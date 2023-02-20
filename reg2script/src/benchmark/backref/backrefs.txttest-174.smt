;;\n( *`{3,}) *(\w+)2(\w+)([^\n]*\n)([\s\S]*?\n?)\1 *\n

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "\u{0a}") (re.++ ((_ re.capture 1) (re.++ (re.* (str.to.re " ")) ((_ re.loop 0 3) (str.to.re "`")))) (re.++ (re.* (str.to.re " ")) (re.++ ((_ re.capture 2) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) (re.++ (str.to.re "2") (re.++ ((_ re.capture 3) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) (re.++ ((_ re.capture 4) (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}"))) (str.to.re "\u{0a}"))) (re.++ ((_ re.capture 5) (re.++ (re.*? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))))) (re.opt (str.to.re "\u{0a}")))) (re.++ (_ re.reference 1) (re.++ (re.* (str.to.re " ")) (str.to.re "\u{0a}"))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
