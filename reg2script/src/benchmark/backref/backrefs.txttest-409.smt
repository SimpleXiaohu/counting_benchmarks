;;::(?:\r?\n|\r){2}([ \t]+).+(?:(?:\r?\n|\r)\1.+)*

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re ":") (re.++ (str.to.re ":") (re.++ ((_ re.loop 0 2) (re.union (re.++ (re.opt (str.to.re "\u{0d}")) (str.to.re "\u{0a}")) (str.to.re "\u{0d}"))) (re.++ ((_ re.capture 1) (re.+ (re.union (str.to.re " ") (str.to.re "\u{09}")))) (re.++ (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.* (re.++ (re.union (re.++ (re.opt (str.to.re "\u{0d}")) (str.to.re "\u{0a}")) (str.to.re "\u{0d}")) (re.++ (_ re.reference 1) (re.+ (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
