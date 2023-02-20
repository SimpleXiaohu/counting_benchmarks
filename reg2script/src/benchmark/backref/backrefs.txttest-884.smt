;;([A-Za-z]+)=(\"?)(.*?)(\2)(,|$)

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ ((_ re.capture 1) (re.++ (re.*? re.allchar) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))))) (re.++ (str.to.re "=") (re.++ ((_ re.capture 2) (re.opt (str.to.re "\u{22}"))) (re.++ ((_ re.capture 3) (re.*? (re.diff (re.range "\x01" "\xff") (str.to.re "\n")))) (re.++ ((_ re.capture 4) (_ re.reference 2)) (re.++ ((_ re.capture 5) (re.union (str.to.re ",") re.end-anchor)) re.all))))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
