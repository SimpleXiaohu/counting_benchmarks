;;^(.*?):(\d+): ((\w+): (.*))[\w\W]*\3((:?\s+at.*\r?\n)*)$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re ":") (re.++ ((_ re.capture 2) (re.+ (re.range "0" "9"))) (re.++ (str.to.re ":") (re.++ (str.to.re " ") (re.++ ((_ re.capture 3) (re.++ ((_ re.capture 4) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))))) (re.++ (str.to.re ":") (re.++ (str.to.re " ") ((_ re.capture 5) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))))))) (re.++ (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to.re "_")))) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "A" "Z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "0" "9")) (re.diff (re.range "\x01" "\xff") (str.to.re "_"))))))) (re.++ (_ re.reference 3) ((_ re.capture 6) (re.* ((_ re.capture 7) (re.++ (re.opt (str.to.re ":")) (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ (str.to.re "a") (re.++ (str.to.re "t") (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (re.opt (str.to.re "\u{0d}")) (str.to.re "\u{0a}"))))))))))))))))))) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
