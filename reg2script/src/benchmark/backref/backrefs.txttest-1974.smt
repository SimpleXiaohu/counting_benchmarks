;;^[^aeiouy]([aeiouy])[^aeiouy]\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "a")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "e")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "i")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "o")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "u")) (re.diff (re.range "\x01" "\xff") (str.to.re "y"))))))) (re.++ ((_ re.capture 1) (re.union (str.to.re "a") (re.union (str.to.re "e") (re.union (str.to.re "i") (re.union (str.to.re "o") (re.union (str.to.re "u") (str.to.re "y"))))))) (re.++ (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "a")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "e")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "i")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "o")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "u")) (re.diff (re.range "\x01" "\xff") (str.to.re "y"))))))) (re.++ (_ re.reference 1) re.all)))))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
