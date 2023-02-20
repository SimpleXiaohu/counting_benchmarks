;;( *)M139\.(?:[cC]ore\.)?namespace\("([^"]+?)\.(\w+)", *((?:\w+\.?)+)\.extend\(\s*\{([\s\S]+?)\n\1\}

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.++ ((_ re.capture 1) (re.* (str.to.re " "))) (re.++ (str.to.re "M") (re.++ (str.to.re "1") (re.++ (str.to.re "3") (re.++ (str.to.re "9") (re.++ (str.to.re ".") (re.++ (re.opt (re.++ (re.union (str.to.re "c") (str.to.re "C")) (re.++ (str.to.re "o") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (str.to.re ".")))))) (re.++ (str.to.re "n") (re.++ (str.to.re "a") (re.++ (str.to.re "m") (re.++ (str.to.re "e") (re.++ (str.to.re "s") (re.++ (str.to.re "p") (re.++ (str.to.re "a") (re.++ (str.to.re "c") (re.++ (str.to.re "e") (re.++ (str.to.re "(") (re.++ (str.to.re "\u{22}") (re.++ ((_ re.capture 2) (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")))) (re.++ (str.to.re ".") (re.++ ((_ re.capture 3) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) (str.to.re "\u{22}")))))))))))))))))))))) (re.++ (str.to.re ",") (re.++ (re.* (str.to.re " ")) (re.++ ((_ re.capture 4) (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_"))))) (re.opt (str.to.re "."))))) (re.++ (str.to.re ".") (re.++ (str.to.re "e") (re.++ (str.to.re "x") (re.++ (str.to.re "t") (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re "d") (re.++ (str.to.re "(") (re.++ (re.* (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "{") (re.++ ((_ re.capture 5) (re.+? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))) (re.++ (str.to.re "\u{0a}") (re.++ (_ re.reference 1) (str.to.re "}")))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
