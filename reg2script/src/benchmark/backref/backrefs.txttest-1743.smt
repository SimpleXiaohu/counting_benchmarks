;;\\int((\\limits)?)\_<b(\d+)>(.*?)<\/b\3><b(\d+)>(.*?)<\/b\5>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "\\") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (re.++ ((_ re.capture 1) (re.opt ((_ re.capture 2) (re.++ (str.to.re "\\") (re.++ (str.to.re "l") (re.++ (str.to.re "i") (re.++ (str.to.re "m") (re.++ (str.to.re "i") (re.++ (str.to.re "t") (str.to.re "s")))))))))) (re.++ (str.to.re "_") (re.++ (str.to.re "<") (re.++ (str.to.re "b") (re.++ ((_ re.capture 3) (re.+ (re.range "0" "9"))) (re.++ (str.to.re ">") (re.++ ((_ re.capture 4) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (str.to.re "b") (re.++ (_ re.reference 3) (re.++ (str.to.re ">") (re.++ (str.to.re "<") (re.++ (str.to.re "b") (re.++ ((_ re.capture 5) (re.+ (re.range "0" "9"))) (re.++ (str.to.re ">") (re.++ ((_ re.capture 6) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (str.to.re "b") (re.++ (_ re.reference 5) (str.to.re ">")))))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
