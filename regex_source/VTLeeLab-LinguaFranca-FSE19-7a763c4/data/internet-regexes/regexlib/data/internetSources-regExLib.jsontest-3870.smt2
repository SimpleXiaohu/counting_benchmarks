
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.loop 1 3) (re.union (re.range "A" "Z") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "1") (re.union (str.to.re "9") (re.union (str.to.re "6") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "1") (re.union (str.to.re "4") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "2") (re.union (str.to.re "0") (str.to.re ";")))))))))))))))))))) (re.++ (str.to.re "-") (re.++ ((_ re.loop 0 1) (str.to.re " ")) (re.++ ((_ re.loop 0 2) (re.range "A" "Z")) (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (str.to.re "H")) re.all)))))))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ re.begin-anchor (re.++ ((_ re.loop 1 3) (re.union (re.range "A" "Z") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "1") (re.union (str.to.re "9") (re.union (str.to.re "6") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "1") (re.union (str.to.re "4") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "2") (re.union (str.to.re "0") (str.to.re ";")))))))))))))))))))) (re.++ (str.to.re "-") (re.++ ((_ re.loop 0 1) (str.to.re " ")) (re.++ ((_ re.loop 0 2) (re.range "A" "Z")) (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (str.to.re "H")) re.all)))))))) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ re.begin-anchor (re.++ ((_ re.loop 1 3) (re.union (re.range "A" "Z") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "1") (re.union (str.to.re "9") (re.union (str.to.re "6") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "1") (re.union (str.to.re "4") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "2") (re.union (str.to.re "0") (str.to.re ";")))))))))))))))))))) (re.++ (str.to.re "-") (re.++ ((_ re.loop 0 1) (str.to.re " ")) (re.++ ((_ re.loop 0 2) (re.range "A" "Z")) (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (str.to.re "H")) re.all)))))))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.loop 1 3) (re.union (re.range "A" "Z") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "1") (re.union (str.to.re "9") (re.union (str.to.re "6") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "1") (re.union (str.to.re "4") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "2") (re.union (str.to.re "0") (str.to.re ";")))))))))))))))))))) (re.++ (str.to.re "-") (re.++ ((_ re.loop 0 1) (str.to.re " ")) (re.++ ((_ re.loop 0 2) (re.range "A" "Z")) (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (str.to.re "H")) re.all)))))))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ re.begin-anchor (re.++ ((_ re.loop 1 3) (re.union (re.range "A" "Z") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "1") (re.union (str.to.re "9") (re.union (str.to.re "6") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "1") (re.union (str.to.re "4") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "2") (re.union (str.to.re "0") (str.to.re ";")))))))))))))))))))) (re.++ (str.to.re "-") (re.++ ((_ re.loop 0 1) (str.to.re " ")) (re.++ ((_ re.loop 0 2) (re.range "A" "Z")) (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (str.to.re "H")) re.all)))))))) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ re.begin-anchor (re.++ ((_ re.loop 1 3) (re.union (re.range "A" "Z") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "1") (re.union (str.to.re "9") (re.union (str.to.re "6") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "1") (re.union (str.to.re "4") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "2") (re.union (str.to.re "0") (str.to.re ";")))))))))))))))))))) (re.++ (str.to.re "-") (re.++ ((_ re.loop 0 1) (str.to.re " ")) (re.++ ((_ re.loop 0 2) (re.range "A" "Z")) (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (str.to.re "H")) re.all)))))))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.loop 1 3) (re.union (re.range "A" "Z") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "1") (re.union (str.to.re "9") (re.union (str.to.re "6") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "1") (re.union (str.to.re "4") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "2") (re.union (str.to.re "0") (str.to.re ";")))))))))))))))))))) (re.++ (str.to.re "-") (re.++ ((_ re.loop 0 1) (str.to.re " ")) (re.++ ((_ re.loop 0 2) (re.range "A" "Z")) (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (str.to.re "H")) re.all)))))))))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ re.begin-anchor (re.++ ((_ re.loop 1 3) (re.union (re.range "A" "Z") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "1") (re.union (str.to.re "9") (re.union (str.to.re "6") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "1") (re.union (str.to.re "4") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "2") (re.union (str.to.re "0") (str.to.re ";")))))))))))))))))))) (re.++ (str.to.re "-") (re.++ ((_ re.loop 0 1) (str.to.re " ")) (re.++ ((_ re.loop 0 2) (re.range "A" "Z")) (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (str.to.re "H")) re.all)))))))) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ re.begin-anchor (re.++ ((_ re.loop 1 3) (re.union (re.range "A" "Z") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "1") (re.union (str.to.re "9") (re.union (str.to.re "6") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "1") (re.union (str.to.re "4") (re.union (str.to.re ";") (re.union (str.to.re "&") (re.union (str.to.re "#") (re.union (str.to.re "2") (re.union (str.to.re "2") (re.union (str.to.re "0") (str.to.re ";")))))))))))))))))))) (re.++ (str.to.re "-") (re.++ ((_ re.loop 0 1) (str.to.re " ")) (re.++ ((_ re.loop 0 2) (re.range "A" "Z")) (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (str.to.re "H")) re.all))))))))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)
