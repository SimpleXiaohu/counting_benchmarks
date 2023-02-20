;;([^a-z']+)|'(')|'((?:[^']|'')+)'|(([a-z])\5*)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.union (re.union (re.union ((_ re.capture 1) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (re.range "a" "z")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}"))))) (re.++ (str.to.re "\u{27}") ((_ re.capture 2) (str.to.re "\u{27}")))) (re.++ (str.to.re "\u{27}") (re.++ ((_ re.capture 3) (re.+ (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")) (re.++ (str.to.re "\u{27}") (str.to.re "\u{27}"))))) (str.to.re "\u{27}")))) ((_ re.capture 4) (re.++ ((_ re.capture 5) (re.range "a" "z")) (re.* (_ re.reference 5))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
