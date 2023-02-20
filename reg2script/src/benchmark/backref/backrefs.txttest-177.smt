;;^([~]{1,2}|[=]{2}|[\^])([*_~=`^]*[^\W_][\s\S]*?[^\W_][*_~=`^]*|[*_~=`^]*[^\W_][*_~=`^]*)\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.union (re.union ((_ re.loop 1 2) (str.to.re "~")) ((_ re.loop 0 2) (str.to.re "="))) (str.to.re "^"))) (re.++ ((_ re.capture 2) (re.union (re.++ (re.* (re.union (str.to.re "*") (re.union (str.to.re "_") (re.union (str.to.re "~") (re.union (str.to.re "=") (re.union (str.to.re "`") (str.to.re "^"))))))) (re.++ (re.inter (re.diff (re.range "\x01" "\xff") (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "A" "Z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "0" "9")) (re.diff (re.range "\x01" "\xff") (str.to.re "_")))))) (re.diff (re.range "\x01" "\xff") (str.to.re "_"))) (re.++ (re.*? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))))) (re.++ (re.inter (re.diff (re.range "\x01" "\xff") (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "A" "Z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "0" "9")) (re.diff (re.range "\x01" "\xff") (str.to.re "_")))))) (re.diff (re.range "\x01" "\xff") (str.to.re "_"))) (re.* (re.union (str.to.re "*") (re.union (str.to.re "_") (re.union (str.to.re "~") (re.union (str.to.re "=") (re.union (str.to.re "`") (str.to.re "^"))))))))))) (re.++ (re.* (re.union (str.to.re "*") (re.union (str.to.re "_") (re.union (str.to.re "~") (re.union (str.to.re "=") (re.union (str.to.re "`") (str.to.re "^"))))))) (re.++ (re.inter (re.diff (re.range "\x01" "\xff") (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "A" "Z")) (re.inter (re.diff (re.range "\x01" "\xff") (re.range "0" "9")) (re.diff (re.range "\x01" "\xff") (str.to.re "_")))))) (re.diff (re.range "\x01" "\xff") (str.to.re "_"))) (re.* (re.union (str.to.re "*") (re.union (str.to.re "_") (re.union (str.to.re "~") (re.union (str.to.re "=") (re.union (str.to.re "`") (str.to.re "^"))))))))))) (re.++ (_ re.reference 1) re.all))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
