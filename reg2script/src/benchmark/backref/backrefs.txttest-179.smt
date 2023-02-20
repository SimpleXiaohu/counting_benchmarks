;;^(\*)([\u00BF-\u1FFF\u2C00-\uD7FFa-zA-Z0-9](?:(\*{1,2})[\s\S]*?\3|[\s\S]*?[^\s*_~=`^])*?)\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (str.to.re "*")) (re.++ ((_ re.capture 2) (re.++ (re.union (re.range "\u{00bf}" "\u{1fff}") (re.union (re.range "\u{2c00}" "\u{d7ffa}") (re.union (str.to.re "-") (re.union (str.to.re "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))) (re.*? (re.union (re.++ ((_ re.capture 3) ((_ re.loop 1 2) (str.to.re "*"))) (re.++ (re.*? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))))) (_ re.reference 3))) (re.++ (re.*? (re.union (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "*")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "_")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "~")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "=")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "`")) (re.diff (re.range "\x01" "\xff") (str.to.re "^")))))))))))))))))) (re.++ (_ re.reference 1) re.all))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
