;;(\r\n|\n|\r)(\s*?\1)+

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (re.union (re.++ (str.to.re "\u{0d}") (str.to.re "\u{0a}")) (str.to.re "\u{0a}")) (str.to.re "\u{0d}"))) (re.+ ((_ re.capture 2) (re.++ (re.*? (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (_ re.reference 1))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
