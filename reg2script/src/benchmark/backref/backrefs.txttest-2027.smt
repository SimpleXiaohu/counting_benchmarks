;;(<h([0-9])>)(.*)(<\/h\2>)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "<") (re.++ (str.to.re "h") (re.++ ((_ re.capture 2) (re.range "0" "9")) (str.to.re ">"))))) (re.++ ((_ re.capture 3) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) ((_ re.capture 4) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (str.to.re "h") (re.++ (_ re.reference 2) (str.to.re ">")))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
