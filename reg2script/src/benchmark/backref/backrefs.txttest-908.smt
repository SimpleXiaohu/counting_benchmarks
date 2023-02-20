;;(')([^\n']*[^\x00-\x7f]+?[^\n']*)(\1)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (str.to.re "\u{27}")) (re.++ ((_ re.capture 2) (re.++ (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")))) (re.++ (re.+? (re.diff (re.range "\x01" "\xff") (re.range "\u{00}" "\u{7f}"))) (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}"))))))) ((_ re.capture 3) (_ re.reference 1)))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
