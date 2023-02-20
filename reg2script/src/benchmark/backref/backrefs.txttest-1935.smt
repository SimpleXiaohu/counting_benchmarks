;;<!-- cc:bc:([A-Za-z:]*) -->(<\/cc>)?<!-- cc:ac:\1 -->

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (str.to.re "<") (re.++ (str.to.re "!") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re " ") (re.++ (str.to.re "c") (re.++ (str.to.re "c") (re.++ (str.to.re ":") (re.++ (str.to.re "b") (re.++ (str.to.re "c") (re.++ (str.to.re ":") (re.++ ((_ re.capture 1) (re.* (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (str.to.re ":"))))) (re.++ (str.to.re " ") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re ">") (re.++ (re.opt ((_ re.capture 2) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (str.to.re "c") (re.++ (str.to.re "c") (str.to.re ">"))))))) (re.++ (str.to.re "<") (re.++ (str.to.re "!") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (re.++ (str.to.re " ") (re.++ (str.to.re "c") (re.++ (str.to.re "c") (re.++ (str.to.re ":") (re.++ (str.to.re "a") (re.++ (str.to.re "c") (re.++ (str.to.re ":") (re.++ (_ re.reference 1) (re.++ (str.to.re " ") (re.++ (str.to.re "-") (re.++ (str.to.re "-") (str.to.re ">"))))))))))))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
