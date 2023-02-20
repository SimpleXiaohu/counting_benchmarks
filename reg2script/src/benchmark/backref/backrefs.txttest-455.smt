;;([^aeiou])\1$

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.++ ((_ re.capture 1) (re.++ (re.*? re.allchar) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "a")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "e")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "i")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "o")) (re.diff (re.range "\x01" "\xff") (str.to.re "u")))))))) (_ re.reference 1)) re.end-anchor)))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
