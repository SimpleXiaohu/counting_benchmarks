;;(?:<\?[^?]*\?>[\s]*)?<([^:]*):Envelope([\S\s]*)<\/\1:Envelope>

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ (re.opt (re.++ (str.to.re "<") (re.++ (str.to.re "?") (re.++ (re.* (re.diff (re.range "\x01" "\xff") (str.to.re "?"))) (re.++ (str.to.re "?") (re.++ (str.to.re ">") (re.* (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))))))) (re.++ (str.to.re "<") (re.++ ((_ re.capture 1) (re.* (re.diff (re.range "\x01" "\xff") (str.to.re ":")))) (re.++ (str.to.re ":") (re.++ (str.to.re "E") (re.++ (str.to.re "n") (re.++ (str.to.re "v") (re.++ (str.to.re "e") (re.++ (str.to.re "l") (re.++ (str.to.re "o") (re.++ (str.to.re "p") (re.++ (str.to.re "e") (re.++ ((_ re.capture 2) (re.* (re.union (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{20}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0a}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0b}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0d}")) (re.inter (re.diff (re.range "\x01" "\xff") (str.to.re "\u{09}")) (re.diff (re.range "\x01" "\xff") (str.to.re "\u{0c}"))))))) (re.union (str.to.re "\u{20}") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))) (re.++ (str.to.re "<") (re.++ (str.to.re "/") (re.++ (_ re.reference 1) (re.++ (str.to.re ":") (re.++ (str.to.re "E") (re.++ (str.to.re "n") (re.++ (str.to.re "v") (re.++ (str.to.re "e") (re.++ (str.to.re "l") (re.++ (str.to.re "o") (re.++ (str.to.re "p") (re.++ (str.to.re "e") (str.to.re ">")))))))))))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
