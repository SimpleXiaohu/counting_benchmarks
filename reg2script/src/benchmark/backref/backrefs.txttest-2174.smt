;;^(=|-|`|:|\.|'|"|~|^|_|\*|\+|#){3,} *\n *([^\n]+)\n\1+ *\n*

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.loop 0 3) ((_ re.capture 1) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to.re "=") (str.to.re "-")) (str.to.re "`")) (str.to.re ":")) (str.to.re ".")) (str.to.re "\u{27}")) (str.to.re "\u{22}")) (str.to.re "~")) re.begin-anchor) (str.to.re "_")) (str.to.re "*")) (str.to.re "+")) (str.to.re "#")))) (re.++ (re.* (str.to.re " ")) (re.++ (str.to.re "\u{0a}") (re.++ (re.* (str.to.re " ")) (re.++ ((_ re.capture 2) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")))) (re.++ (str.to.re "\u{0a}") (re.++ (re.+ (_ re.reference 1)) (re.++ (re.* (str.to.re " ")) (re.++ (re.* (str.to.re "\u{0a}")) re.all))))))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
