;;(['"])(raw)?@([^'"]+)\.html(:data|:keys|:events)?\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ (re.opt ((_ re.capture 2) (re.++ (str.to.re "r") (re.++ (str.to.re "a") (str.to.re "w"))))) (re.++ (str.to.re "@") (re.++ ((_ re.capture 3) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}"))))) (re.++ (str.to.re ".") (re.++ (str.to.re "h") (re.++ (str.to.re "t") (re.++ (str.to.re "m") (re.++ (str.to.re "l") (re.++ (re.opt ((_ re.capture 4) (re.union (re.union (re.++ (str.to.re ":") (re.++ (str.to.re "d") (re.++ (str.to.re "a") (re.++ (str.to.re "t") (str.to.re "a"))))) (re.++ (str.to.re ":") (re.++ (str.to.re "k") (re.++ (str.to.re "e") (re.++ (str.to.re "y") (str.to.re "s")))))) (re.++ (str.to.re ":") (re.++ (str.to.re "e") (re.++ (str.to.re "v") (re.++ (str.to.re "e") (re.++ (str.to.re "n") (re.++ (str.to.re "t") (str.to.re "s")))))))))) (_ re.reference 1))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
