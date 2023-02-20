;;(\d{4})(\D)(\d{2})\2(\d{2})(?:\s+(\d{2})\D?(\d{2})\D?(\d{2}))?

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ ((_ re.capture 2) (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 3) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (_ re.reference 2) (re.++ ((_ re.capture 4) ((_ re.loop 0 2) (re.range "0" "9"))) (re.opt (re.++ (re.+ (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))) (re.++ ((_ re.capture 5) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) (re.++ ((_ re.capture 6) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (re.opt (re.diff (re.range "\x01" "\xff") (re.range "0" "9"))) ((_ re.capture 7) ((_ re.loop 0 2) (re.range "0" "9")))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
