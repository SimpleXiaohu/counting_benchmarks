;;\\begin<b(\d+)>array<\/b\1><b(\d+)>([lcr]+)<\/b\2>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "\\") (re.++ (str.to.re "b") (re.++ (str.to.re "e") (re.++ (str.to.re "g") (re.++ (str.to.re "i") (re.++ (str.to.re "n") (re.++ (str.to.re "<") (re.++ (str.to.re "b") (re.++ ((_ re.capture 1) (re.+ (re.range "0" "9"))) (re.++ (str.to.re ">") (re.++ (str.to.re "a") (re.++ (str.to.re "r") (re.++ (str.to.re "r") (re.++ (str.to.re "a") (re.++ (str.to.re "y") (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (str.to.re "b") (re.++ (_ re.reference 1) (re.++ (str.to.re ">") (re.++ (str.to.re "<") (re.++ (str.to.re "b") (re.++ ((_ re.capture 2) (re.+ (re.range "0" "9"))) (re.++ (str.to.re ">") (re.++ ((_ re.capture 3) (re.+ (re.union (str.to.re "l") (re.union (str.to.re "c") (str.to.re "r"))))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (str.to.re "b") (re.++ (_ re.reference 2) (str.to.re ">")))))))))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
