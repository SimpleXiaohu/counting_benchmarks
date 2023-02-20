;;('|")__scss_backup_(\d+)\1

(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))

(assert (str.in.re var0 (re.++ (re.*? re.allchar) (re.++ (re.++ ((_ re.capture 1) (re.union (str.to.re "\u{27}") (str.to.re "\u{22}"))) (re.++ (str.to.re "_") (re.++ (str.to.re "_") (re.++ (str.to.re "s") (re.++ (str.to.re "c") (re.++ (str.to.re "s") (re.++ (str.to.re "s") (re.++ (str.to.re "_") (re.++ (str.to.re "b") (re.++ (str.to.re "a") (re.++ (str.to.re "c") (re.++ (str.to.re "k") (re.++ (str.to.re "u") (re.++ (str.to.re "p") (re.++ (str.to.re "_") (re.++ ((_ re.capture 2) (re.+ (re.range "0" "9"))) (_ re.reference 1))))))))))))))))) re.all))))

(assert (> (str.len var0) 10))

(check-sat)
(get-model)
