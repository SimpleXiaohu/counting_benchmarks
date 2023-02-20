;;(AlphaImageLoader\([^)]*src=)(['"]?)([^"'),]+)\2

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.++ (str.to.re "A") (re.++ (str.to.re "l") (re.++ (str.to.re "p") (re.++ (str.to.re "h") (re.++ (str.to.re "a") (re.++ (str.to.re "I") (re.++ (str.to.re "m") (re.++ (str.to.re "a") (re.++ (str.to.re "g") (re.++ (str.to.re "e") (re.++ (str.to.re "L") (re.++ (str.to.re "o") (re.++ (str.to.re "a") (re.++ (str.to.re "d") (re.++ (str.to.re "e") (re.++ (str.to.re "r") (re.++ (str.to.re "(") (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re ")"))) (re.++ (str.to.re "s") (re.++ (str.to.re "r") (re.++ (str.to.re "c") (str.to.re "="))))))))))))))))))))))) (re.++ ((_ re.capture 2) (re.opt (re.union (str.to.re "\u{27}") (str.to.re "\u{22}")))) (re.++ ((_ re.capture 3) (re.+ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{22}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{27}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re ")")) (re.diff (re.range "\x01" "\xff") (str.to.re ","))))))) (_ re.reference 2)))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
