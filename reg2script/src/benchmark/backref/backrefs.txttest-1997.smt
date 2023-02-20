;;((https?:\/..*\/)[^\/:]*:\d+(?:.|\n)*)\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "t") (re.++ (str.to.re "p") (re.++ (re.opt (str.to.re "s")) (re.++ (str.to.re ":") (re.++ (str.to.re "/") (re.++ (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (str.to.re "/"))))))))))) (re.++ (re.* (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "/")) (re.diff (re.range "\x01" "\xff") (str.to.re ":")))) (re.++ (str.to.re ":") (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (re.diff (re.range "\x01" "\xff") (str.to.re "\n")) (str.to.re "\u{0a}")))))))) (_ re.reference 2)) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
