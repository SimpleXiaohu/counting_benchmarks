;;^(.*?)<mo>\_<\/mo><(.*?)>(.*?)<\/\2><mo>\^<\/mo><(.*?)>(.*?)<\/\4>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "<") (re.++ (str.to.re "m") (re.++ (str.to.re "o") (re.++ (str.to.re ">") (re.++ (str.to.re "_") (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (str.to.re "m") (re.++ (str.to.re "o") (re.++ (str.to.re ">") (re.++ (str.to.re "<") (re.++ ((_ re.capture 2) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re ">") (re.++ ((_ re.capture 3) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 2) (re.++ (str.to.re ">") (re.++ (str.to.re "<") (re.++ (str.to.re "m") (re.++ (str.to.re "o") (re.++ (str.to.re ">") (re.++ (str.to.re "^") (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (str.to.re "m") (re.++ (str.to.re "o") (re.++ (str.to.re ">") (re.++ (str.to.re "<") (re.++ ((_ re.capture 4) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re ">") (re.++ ((_ re.capture 5) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 4) (re.++ (str.to.re ">") re.all))))))))))))))))))))))))))))))))))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
