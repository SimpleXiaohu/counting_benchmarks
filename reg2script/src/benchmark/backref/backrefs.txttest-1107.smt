;;\x19start(\d+)\x19([^\x19]*?)\x19([^\x19]*?)\x19([^\x19]*?)\x19end\1\x19

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "\u{19}") (re.++ (str.to.re "s") (re.++ (str.to.re "t") (re.++ (str.to.re "a") (re.++ (str.to.re "r") (re.++ (str.to.re "t") (re.++ ((_ re.capture 1) (re.+ (re.range "0" "9"))) (re.++ (str.to.re "\u{19}") (re.++ ((_ re.capture 2) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\u{19}")))) (re.++ (str.to.re "\u{19}") (re.++ ((_ re.capture 3) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\u{19}")))) (re.++ (str.to.re "\u{19}") (re.++ ((_ re.capture 4) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\u{19}")))) (re.++ (str.to.re "\u{19e}") (re.++ (str.to.re "n") (re.++ (str.to.re "d") (re.++ (_ re.reference 1) (str.to.re "\u{19}")))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
