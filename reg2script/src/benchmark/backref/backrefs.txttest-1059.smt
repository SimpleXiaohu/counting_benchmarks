;;(__[a-z0-9]+(?:__)?\.children\.push\()(.*?)\)\n(\1)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "_") (re.++ (str.to.re "_") (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to.re "_") (str.to.re "_"))) (re.++ (str.to.re ".") (re.++ (str.to.re "c") (re.++ (str.to.re "h") (re.++ (str.to.re "i") (re.++ (str.to.re "l") (re.++ (str.to.re "d") (re.++ (str.to.re "r") (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re ".") (re.++ (str.to.re "p") (re.++ (str.to.re "u") (re.++ (str.to.re "s") (re.++ (str.to.re "h") (str.to.re "(")))))))))))))))))))) (re.++ ((_ re.capture 2) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re ")") (re.++ (str.to.re "\u{0a}") ((_ re.capture 3) (_ re.reference 1)))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
