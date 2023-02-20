;;\u00ab(.+?)\u00b7(.+?)\u00b7\1\u00bb

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "\u{00ab}") (re.++ ((_ re.capture 1) (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "\u{00b7}") (re.++ ((_ re.capture 2) (re.+? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "\u{00b7}") (re.++ (_ re.reference 1) (str.to.re "\u{00bb}"))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
