;;(?:([\*_~]{1,3}))([^\*_~\n]+[^\*_~\s])\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) ((_ re.loop 1 3) (re.union (str.to.re "*") (re.union (str.to.re "_") (str.to.re "~"))))) (re.++ ((_ re.capture 2) (re.++ (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "*")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "_")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "~")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")))))) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "*")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "_")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "~")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}")))))))))))) (_ re.reference 1))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
