;;(<script.*(myapp|qqbrowser)\/\2\.js.*<\/script>)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ ((_ re.capture 1) (re.++ (str.to.re "<") (re.++ (str.to.re "s") (re.++ (str.to.re "c") (re.++ (str.to.re "r") (re.++ (str.to.re "i") (re.++ (str.to.re "p") (re.++ (str.to.re "t") (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ ((_ re.capture 2) (re.union (re.++ (str.to.re "m") (re.++ (str.to.re "y") (re.++ (str.to.re "a") (re.++ (str.to.re "p") (str.to.re "p"))))) (re.++ (str.to.re "q") (re.++ (str.to.re "q") (re.++ (str.to.re "b") (re.++ (str.to.re "r") (re.++ (str.to.re "o") (re.++ (str.to.re "w") (re.++ (str.to.re "s") (re.++ (str.to.re "e") (str.to.re "r"))))))))))) (re.++ (str.to.re "/") (re.++ (_ re.reference 2) (re.++ (str.to.re ".") (re.++ (str.to.re "j") (re.++ (str.to.re "s") (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "\n"))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (str.to.re "s") (re.++ (str.to.re "c") (re.++ (str.to.re "r") (re.++ (str.to.re "i") (re.++ (str.to.re "p") (re.++ (str.to.re "t") (str.to.re ">"))))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
