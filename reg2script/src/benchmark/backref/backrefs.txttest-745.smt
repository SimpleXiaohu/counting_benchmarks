;;(\x1b\[)((?:\d+;)*?)(\d+)((?:;\d+)*?);\3((?:;\d+)*m)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "\u{1b}") (str.to.re "["))) (re.++ ((_ re.capture 2) (re.*? (re.++ (re.+ (re.range "0" "9")) (str.to.re ";")))) (re.++ ((_ re.capture 3) (re.+ (re.range "0" "9"))) (re.++ ((_ re.capture 4) (re.*? (re.++ (str.to.re ";") (re.+ (re.range "0" "9"))))) (re.++ (str.to.re ";") (re.++ (_ re.reference 3) ((_ re.capture 5) (re.++ (re.* (re.++ (str.to.re ";") (re.+ (re.range "0" "9")))) (str.to.re "m"))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
