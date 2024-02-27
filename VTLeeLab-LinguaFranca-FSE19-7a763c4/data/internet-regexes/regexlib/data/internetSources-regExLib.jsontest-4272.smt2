
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.union (re.union (re.union (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.++ ((_ re.capture 3) (str.to.re "0")) (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "8")))))) ((_ re.capture 4) (re.++ (str.to.re "1") (str.to.re "0")))) ((_ re.capture 5) (re.++ (str.to.re "1") (str.to.re "2"))))) (re.++ ((_ re.capture 6) (str.to.re "/")) (re.++ ((_ re.capture 7) (re.union (re.union ((_ re.capture 8) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 9) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 10) (re.++ ((_ re.capture 11) (str.to.re "3")) (re.union (str.to.re "0") (str.to.re "1")))))) (re.++ ((_ re.capture 12) (str.to.re "/")) ((_ re.capture 13) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 14) (re.++ ((_ re.capture 15) (re.union (re.++ ((_ re.capture 16) (re.++ (re.*? re.allchar) (str.to.re "0"))) (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "9")))) ((_ re.capture 17) (re.++ (re.++ (re.*? re.allchar) (str.to.re "1")) (str.to.re "1"))))) (re.++ ((_ re.capture 18) (str.to.re "/")) (re.++ ((_ re.capture 19) (re.union (re.union ((_ re.capture 20) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 21) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 22) (re.++ (str.to.re "3") (str.to.re "0"))))) (re.++ ((_ re.capture 23) (str.to.re "/")) ((_ re.capture 24) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 25) (re.++ ((_ re.capture 26) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 27) (str.to.re "/")) (re.++ ((_ re.capture 28) (re.union (re.union ((_ re.capture 29) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 30) (re.++ ((_ re.capture 31) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 32) (re.++ ((_ re.capture 33) (str.to.re "2")) (re.range "0" "8"))))) (re.++ ((_ re.capture 34) (str.to.re "/")) ((_ re.capture 35) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 36) (re.++ ((_ re.capture 37) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 38) (str.to.re "/")) (re.++ ((_ re.capture 39) (re.union (re.union ((_ re.capture 40) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 41) (re.++ ((_ re.capture 42) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 43) (re.++ ((_ re.capture 44) (str.to.re "2")) (re.range "0" "9"))))) (re.++ ((_ re.capture 45) (str.to.re "/")) ((_ re.capture 46) (re.++ ((_ re.capture 47) ((_ re.loop 0 2) (re.range "0" "9"))) ((_ re.capture 48) (re.union ((_ re.capture 49) (re.++ (re.union (str.to.re "0") (re.union (str.to.re "2") (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "8"))))) (re.union (str.to.re "0") (re.union (str.to.re "4") (str.to.re "8"))))) ((_ re.capture 50) (re.++ (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "9"))))) (re.union (str.to.re "2") (str.to.re "6"))))))))))))) re.end-anchor))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.union (re.union (re.union (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.++ ((_ re.capture 3) (str.to.re "0")) (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "8")))))) ((_ re.capture 4) (re.++ (str.to.re "1") (str.to.re "0")))) ((_ re.capture 5) (re.++ (str.to.re "1") (str.to.re "2"))))) (re.++ ((_ re.capture 6) (str.to.re "/")) (re.++ ((_ re.capture 7) (re.union (re.union ((_ re.capture 8) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 9) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 10) (re.++ ((_ re.capture 11) (str.to.re "3")) (re.union (str.to.re "0") (str.to.re "1")))))) (re.++ ((_ re.capture 12) (str.to.re "/")) ((_ re.capture 13) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 14) (re.++ ((_ re.capture 15) (re.union (re.++ ((_ re.capture 16) (re.++ (re.*? re.allchar) (str.to.re "0"))) (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "9")))) ((_ re.capture 17) (re.++ (re.++ (re.*? re.allchar) (str.to.re "1")) (str.to.re "1"))))) (re.++ ((_ re.capture 18) (str.to.re "/")) (re.++ ((_ re.capture 19) (re.union (re.union ((_ re.capture 20) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 21) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 22) (re.++ (str.to.re "3") (str.to.re "0"))))) (re.++ ((_ re.capture 23) (str.to.re "/")) ((_ re.capture 24) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 25) (re.++ ((_ re.capture 26) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 27) (str.to.re "/")) (re.++ ((_ re.capture 28) (re.union (re.union ((_ re.capture 29) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 30) (re.++ ((_ re.capture 31) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 32) (re.++ ((_ re.capture 33) (str.to.re "2")) (re.range "0" "8"))))) (re.++ ((_ re.capture 34) (str.to.re "/")) ((_ re.capture 35) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 36) (re.++ ((_ re.capture 37) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 38) (str.to.re "/")) (re.++ ((_ re.capture 39) (re.union (re.union ((_ re.capture 40) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 41) (re.++ ((_ re.capture 42) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 43) (re.++ ((_ re.capture 44) (str.to.re "2")) (re.range "0" "9"))))) (re.++ ((_ re.capture 45) (str.to.re "/")) ((_ re.capture 46) (re.++ ((_ re.capture 47) ((_ re.loop 0 2) (re.range "0" "9"))) ((_ re.capture 48) (re.union ((_ re.capture 49) (re.++ (re.union (str.to.re "0") (re.union (str.to.re "2") (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "8"))))) (re.union (str.to.re "0") (re.union (str.to.re "4") (str.to.re "8"))))) ((_ re.capture 50) (re.++ (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "9"))))) (re.union (str.to.re "2") (str.to.re "6"))))))))))))) re.end-anchor))) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.union (re.union (re.union (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.++ ((_ re.capture 3) (str.to.re "0")) (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "8")))))) ((_ re.capture 4) (re.++ (str.to.re "1") (str.to.re "0")))) ((_ re.capture 5) (re.++ (str.to.re "1") (str.to.re "2"))))) (re.++ ((_ re.capture 6) (str.to.re "/")) (re.++ ((_ re.capture 7) (re.union (re.union ((_ re.capture 8) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 9) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 10) (re.++ ((_ re.capture 11) (str.to.re "3")) (re.union (str.to.re "0") (str.to.re "1")))))) (re.++ ((_ re.capture 12) (str.to.re "/")) ((_ re.capture 13) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 14) (re.++ ((_ re.capture 15) (re.union (re.++ ((_ re.capture 16) (re.++ (re.*? re.allchar) (str.to.re "0"))) (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "9")))) ((_ re.capture 17) (re.++ (re.++ (re.*? re.allchar) (str.to.re "1")) (str.to.re "1"))))) (re.++ ((_ re.capture 18) (str.to.re "/")) (re.++ ((_ re.capture 19) (re.union (re.union ((_ re.capture 20) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 21) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 22) (re.++ (str.to.re "3") (str.to.re "0"))))) (re.++ ((_ re.capture 23) (str.to.re "/")) ((_ re.capture 24) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 25) (re.++ ((_ re.capture 26) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 27) (str.to.re "/")) (re.++ ((_ re.capture 28) (re.union (re.union ((_ re.capture 29) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 30) (re.++ ((_ re.capture 31) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 32) (re.++ ((_ re.capture 33) (str.to.re "2")) (re.range "0" "8"))))) (re.++ ((_ re.capture 34) (str.to.re "/")) ((_ re.capture 35) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 36) (re.++ ((_ re.capture 37) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 38) (str.to.re "/")) (re.++ ((_ re.capture 39) (re.union (re.union ((_ re.capture 40) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 41) (re.++ ((_ re.capture 42) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 43) (re.++ ((_ re.capture 44) (str.to.re "2")) (re.range "0" "9"))))) (re.++ ((_ re.capture 45) (str.to.re "/")) ((_ re.capture 46) (re.++ ((_ re.capture 47) ((_ re.loop 0 2) (re.range "0" "9"))) ((_ re.capture 48) (re.union ((_ re.capture 49) (re.++ (re.union (str.to.re "0") (re.union (str.to.re "2") (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "8"))))) (re.union (str.to.re "0") (re.union (str.to.re "4") (str.to.re "8"))))) ((_ re.capture 50) (re.++ (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "9"))))) (re.union (str.to.re "2") (str.to.re "6"))))))))))))) re.end-anchor))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.union (re.union (re.union (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.++ ((_ re.capture 3) (str.to.re "0")) (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "8")))))) ((_ re.capture 4) (re.++ (str.to.re "1") (str.to.re "0")))) ((_ re.capture 5) (re.++ (str.to.re "1") (str.to.re "2"))))) (re.++ ((_ re.capture 6) (str.to.re "/")) (re.++ ((_ re.capture 7) (re.union (re.union ((_ re.capture 8) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 9) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 10) (re.++ ((_ re.capture 11) (str.to.re "3")) (re.union (str.to.re "0") (str.to.re "1")))))) (re.++ ((_ re.capture 12) (str.to.re "/")) ((_ re.capture 13) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 14) (re.++ ((_ re.capture 15) (re.union (re.++ ((_ re.capture 16) (re.++ (re.*? re.allchar) (str.to.re "0"))) (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "9")))) ((_ re.capture 17) (re.++ (re.++ (re.*? re.allchar) (str.to.re "1")) (str.to.re "1"))))) (re.++ ((_ re.capture 18) (str.to.re "/")) (re.++ ((_ re.capture 19) (re.union (re.union ((_ re.capture 20) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 21) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 22) (re.++ (str.to.re "3") (str.to.re "0"))))) (re.++ ((_ re.capture 23) (str.to.re "/")) ((_ re.capture 24) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 25) (re.++ ((_ re.capture 26) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 27) (str.to.re "/")) (re.++ ((_ re.capture 28) (re.union (re.union ((_ re.capture 29) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 30) (re.++ ((_ re.capture 31) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 32) (re.++ ((_ re.capture 33) (str.to.re "2")) (re.range "0" "8"))))) (re.++ ((_ re.capture 34) (str.to.re "/")) ((_ re.capture 35) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 36) (re.++ ((_ re.capture 37) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 38) (str.to.re "/")) (re.++ ((_ re.capture 39) (re.union (re.union ((_ re.capture 40) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 41) (re.++ ((_ re.capture 42) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 43) (re.++ ((_ re.capture 44) (str.to.re "2")) (re.range "0" "9"))))) (re.++ ((_ re.capture 45) (str.to.re "/")) ((_ re.capture 46) (re.++ ((_ re.capture 47) ((_ re.loop 0 2) (re.range "0" "9"))) ((_ re.capture 48) (re.union ((_ re.capture 49) (re.++ (re.union (str.to.re "0") (re.union (str.to.re "2") (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "8"))))) (re.union (str.to.re "0") (re.union (str.to.re "4") (str.to.re "8"))))) ((_ re.capture 50) (re.++ (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "9"))))) (re.union (str.to.re "2") (str.to.re "6"))))))))))))) re.end-anchor))))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.union (re.union (re.union (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.++ ((_ re.capture 3) (str.to.re "0")) (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "8")))))) ((_ re.capture 4) (re.++ (str.to.re "1") (str.to.re "0")))) ((_ re.capture 5) (re.++ (str.to.re "1") (str.to.re "2"))))) (re.++ ((_ re.capture 6) (str.to.re "/")) (re.++ ((_ re.capture 7) (re.union (re.union ((_ re.capture 8) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 9) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 10) (re.++ ((_ re.capture 11) (str.to.re "3")) (re.union (str.to.re "0") (str.to.re "1")))))) (re.++ ((_ re.capture 12) (str.to.re "/")) ((_ re.capture 13) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 14) (re.++ ((_ re.capture 15) (re.union (re.++ ((_ re.capture 16) (re.++ (re.*? re.allchar) (str.to.re "0"))) (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "9")))) ((_ re.capture 17) (re.++ (re.++ (re.*? re.allchar) (str.to.re "1")) (str.to.re "1"))))) (re.++ ((_ re.capture 18) (str.to.re "/")) (re.++ ((_ re.capture 19) (re.union (re.union ((_ re.capture 20) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 21) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 22) (re.++ (str.to.re "3") (str.to.re "0"))))) (re.++ ((_ re.capture 23) (str.to.re "/")) ((_ re.capture 24) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 25) (re.++ ((_ re.capture 26) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 27) (str.to.re "/")) (re.++ ((_ re.capture 28) (re.union (re.union ((_ re.capture 29) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 30) (re.++ ((_ re.capture 31) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 32) (re.++ ((_ re.capture 33) (str.to.re "2")) (re.range "0" "8"))))) (re.++ ((_ re.capture 34) (str.to.re "/")) ((_ re.capture 35) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 36) (re.++ ((_ re.capture 37) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 38) (str.to.re "/")) (re.++ ((_ re.capture 39) (re.union (re.union ((_ re.capture 40) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 41) (re.++ ((_ re.capture 42) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 43) (re.++ ((_ re.capture 44) (str.to.re "2")) (re.range "0" "9"))))) (re.++ ((_ re.capture 45) (str.to.re "/")) ((_ re.capture 46) (re.++ ((_ re.capture 47) ((_ re.loop 0 2) (re.range "0" "9"))) ((_ re.capture 48) (re.union ((_ re.capture 49) (re.++ (re.union (str.to.re "0") (re.union (str.to.re "2") (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "8"))))) (re.union (str.to.re "0") (re.union (str.to.re "4") (str.to.re "8"))))) ((_ re.capture 50) (re.++ (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "9"))))) (re.union (str.to.re "2") (str.to.re "6"))))))))))))) re.end-anchor))) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.union (re.union (re.union (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.++ ((_ re.capture 3) (str.to.re "0")) (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "8")))))) ((_ re.capture 4) (re.++ (str.to.re "1") (str.to.re "0")))) ((_ re.capture 5) (re.++ (str.to.re "1") (str.to.re "2"))))) (re.++ ((_ re.capture 6) (str.to.re "/")) (re.++ ((_ re.capture 7) (re.union (re.union ((_ re.capture 8) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 9) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 10) (re.++ ((_ re.capture 11) (str.to.re "3")) (re.union (str.to.re "0") (str.to.re "1")))))) (re.++ ((_ re.capture 12) (str.to.re "/")) ((_ re.capture 13) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 14) (re.++ ((_ re.capture 15) (re.union (re.++ ((_ re.capture 16) (re.++ (re.*? re.allchar) (str.to.re "0"))) (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "9")))) ((_ re.capture 17) (re.++ (re.++ (re.*? re.allchar) (str.to.re "1")) (str.to.re "1"))))) (re.++ ((_ re.capture 18) (str.to.re "/")) (re.++ ((_ re.capture 19) (re.union (re.union ((_ re.capture 20) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 21) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 22) (re.++ (str.to.re "3") (str.to.re "0"))))) (re.++ ((_ re.capture 23) (str.to.re "/")) ((_ re.capture 24) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 25) (re.++ ((_ re.capture 26) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 27) (str.to.re "/")) (re.++ ((_ re.capture 28) (re.union (re.union ((_ re.capture 29) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 30) (re.++ ((_ re.capture 31) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 32) (re.++ ((_ re.capture 33) (str.to.re "2")) (re.range "0" "8"))))) (re.++ ((_ re.capture 34) (str.to.re "/")) ((_ re.capture 35) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 36) (re.++ ((_ re.capture 37) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 38) (str.to.re "/")) (re.++ ((_ re.capture 39) (re.union (re.union ((_ re.capture 40) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 41) (re.++ ((_ re.capture 42) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 43) (re.++ ((_ re.capture 44) (str.to.re "2")) (re.range "0" "9"))))) (re.++ ((_ re.capture 45) (str.to.re "/")) ((_ re.capture 46) (re.++ ((_ re.capture 47) ((_ re.loop 0 2) (re.range "0" "9"))) ((_ re.capture 48) (re.union ((_ re.capture 49) (re.++ (re.union (str.to.re "0") (re.union (str.to.re "2") (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "8"))))) (re.union (str.to.re "0") (re.union (str.to.re "4") (str.to.re "8"))))) ((_ re.capture 50) (re.++ (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "9"))))) (re.union (str.to.re "2") (str.to.re "6"))))))))))))) re.end-anchor))) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.union (re.union (re.union (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.++ ((_ re.capture 3) (str.to.re "0")) (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "8")))))) ((_ re.capture 4) (re.++ (str.to.re "1") (str.to.re "0")))) ((_ re.capture 5) (re.++ (str.to.re "1") (str.to.re "2"))))) (re.++ ((_ re.capture 6) (str.to.re "/")) (re.++ ((_ re.capture 7) (re.union (re.union ((_ re.capture 8) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 9) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 10) (re.++ ((_ re.capture 11) (str.to.re "3")) (re.union (str.to.re "0") (str.to.re "1")))))) (re.++ ((_ re.capture 12) (str.to.re "/")) ((_ re.capture 13) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 14) (re.++ ((_ re.capture 15) (re.union (re.++ ((_ re.capture 16) (re.++ (re.*? re.allchar) (str.to.re "0"))) (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "9")))) ((_ re.capture 17) (re.++ (re.++ (re.*? re.allchar) (str.to.re "1")) (str.to.re "1"))))) (re.++ ((_ re.capture 18) (str.to.re "/")) (re.++ ((_ re.capture 19) (re.union (re.union ((_ re.capture 20) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 21) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 22) (re.++ (str.to.re "3") (str.to.re "0"))))) (re.++ ((_ re.capture 23) (str.to.re "/")) ((_ re.capture 24) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 25) (re.++ ((_ re.capture 26) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 27) (str.to.re "/")) (re.++ ((_ re.capture 28) (re.union (re.union ((_ re.capture 29) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 30) (re.++ ((_ re.capture 31) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 32) (re.++ ((_ re.capture 33) (str.to.re "2")) (re.range "0" "8"))))) (re.++ ((_ re.capture 34) (str.to.re "/")) ((_ re.capture 35) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 36) (re.++ ((_ re.capture 37) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 38) (str.to.re "/")) (re.++ ((_ re.capture 39) (re.union (re.union ((_ re.capture 40) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 41) (re.++ ((_ re.capture 42) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 43) (re.++ ((_ re.capture 44) (str.to.re "2")) (re.range "0" "9"))))) (re.++ ((_ re.capture 45) (str.to.re "/")) ((_ re.capture 46) (re.++ ((_ re.capture 47) ((_ re.loop 0 2) (re.range "0" "9"))) ((_ re.capture 48) (re.union ((_ re.capture 49) (re.++ (re.union (str.to.re "0") (re.union (str.to.re "2") (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "8"))))) (re.union (str.to.re "0") (re.union (str.to.re "4") (str.to.re "8"))))) ((_ re.capture 50) (re.++ (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "9"))))) (re.union (str.to.re "2") (str.to.re "6"))))))))))))) re.end-anchor))))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.union (re.union (re.union (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.++ ((_ re.capture 3) (str.to.re "0")) (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "8")))))) ((_ re.capture 4) (re.++ (str.to.re "1") (str.to.re "0")))) ((_ re.capture 5) (re.++ (str.to.re "1") (str.to.re "2"))))) (re.++ ((_ re.capture 6) (str.to.re "/")) (re.++ ((_ re.capture 7) (re.union (re.union ((_ re.capture 8) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 9) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 10) (re.++ ((_ re.capture 11) (str.to.re "3")) (re.union (str.to.re "0") (str.to.re "1")))))) (re.++ ((_ re.capture 12) (str.to.re "/")) ((_ re.capture 13) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 14) (re.++ ((_ re.capture 15) (re.union (re.++ ((_ re.capture 16) (re.++ (re.*? re.allchar) (str.to.re "0"))) (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "9")))) ((_ re.capture 17) (re.++ (re.++ (re.*? re.allchar) (str.to.re "1")) (str.to.re "1"))))) (re.++ ((_ re.capture 18) (str.to.re "/")) (re.++ ((_ re.capture 19) (re.union (re.union ((_ re.capture 20) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 21) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 22) (re.++ (str.to.re "3") (str.to.re "0"))))) (re.++ ((_ re.capture 23) (str.to.re "/")) ((_ re.capture 24) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 25) (re.++ ((_ re.capture 26) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 27) (str.to.re "/")) (re.++ ((_ re.capture 28) (re.union (re.union ((_ re.capture 29) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 30) (re.++ ((_ re.capture 31) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 32) (re.++ ((_ re.capture 33) (str.to.re "2")) (re.range "0" "8"))))) (re.++ ((_ re.capture 34) (str.to.re "/")) ((_ re.capture 35) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 36) (re.++ ((_ re.capture 37) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 38) (str.to.re "/")) (re.++ ((_ re.capture 39) (re.union (re.union ((_ re.capture 40) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 41) (re.++ ((_ re.capture 42) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 43) (re.++ ((_ re.capture 44) (str.to.re "2")) (re.range "0" "9"))))) (re.++ ((_ re.capture 45) (str.to.re "/")) ((_ re.capture 46) (re.++ ((_ re.capture 47) ((_ re.loop 0 2) (re.range "0" "9"))) ((_ re.capture 48) (re.union ((_ re.capture 49) (re.++ (re.union (str.to.re "0") (re.union (str.to.re "2") (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "8"))))) (re.union (str.to.re "0") (re.union (str.to.re "4") (str.to.re "8"))))) ((_ re.capture 50) (re.++ (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "9"))))) (re.union (str.to.re "2") (str.to.re "6"))))))))))))) re.end-anchor))) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.union (re.union (re.union (re.++ re.begin-anchor (re.++ ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.union (re.union (re.++ ((_ re.capture 3) (str.to.re "0")) (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "8")))))) ((_ re.capture 4) (re.++ (str.to.re "1") (str.to.re "0")))) ((_ re.capture 5) (re.++ (str.to.re "1") (str.to.re "2"))))) (re.++ ((_ re.capture 6) (str.to.re "/")) (re.++ ((_ re.capture 7) (re.union (re.union ((_ re.capture 8) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 9) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 10) (re.++ ((_ re.capture 11) (str.to.re "3")) (re.union (str.to.re "0") (str.to.re "1")))))) (re.++ ((_ re.capture 12) (str.to.re "/")) ((_ re.capture 13) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 14) (re.++ ((_ re.capture 15) (re.union (re.++ ((_ re.capture 16) (re.++ (re.*? re.allchar) (str.to.re "0"))) (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "9")))) ((_ re.capture 17) (re.++ (re.++ (re.*? re.allchar) (str.to.re "1")) (str.to.re "1"))))) (re.++ ((_ re.capture 18) (str.to.re "/")) (re.++ ((_ re.capture 19) (re.union (re.union ((_ re.capture 20) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 21) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) ((_ re.capture 22) (re.++ (str.to.re "3") (str.to.re "0"))))) (re.++ ((_ re.capture 23) (str.to.re "/")) ((_ re.capture 24) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 25) (re.++ ((_ re.capture 26) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 27) (str.to.re "/")) (re.++ ((_ re.capture 28) (re.union (re.union ((_ re.capture 29) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 30) (re.++ ((_ re.capture 31) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 32) (re.++ ((_ re.capture 33) (str.to.re "2")) (re.range "0" "8"))))) (re.++ ((_ re.capture 34) (str.to.re "/")) ((_ re.capture 35) ((_ re.loop 0 4) (re.range "0" "9")))))))) re.all)) (re.++ ((_ re.capture 36) (re.++ ((_ re.capture 37) (re.++ (re.++ (re.*? re.allchar) (str.to.re "0")) (str.to.re "2"))) (re.++ ((_ re.capture 38) (str.to.re "/")) (re.++ ((_ re.capture 39) (re.union (re.union ((_ re.capture 40) (re.++ (str.to.re "0") (re.range "1" "9"))) ((_ re.capture 41) (re.++ ((_ re.capture 42) (str.to.re "1")) (re.range "0" "9")))) ((_ re.capture 43) (re.++ ((_ re.capture 44) (str.to.re "2")) (re.range "0" "9"))))) (re.++ ((_ re.capture 45) (str.to.re "/")) ((_ re.capture 46) (re.++ ((_ re.capture 47) ((_ re.loop 0 2) (re.range "0" "9"))) ((_ re.capture 48) (re.union ((_ re.capture 49) (re.++ (re.union (str.to.re "0") (re.union (str.to.re "2") (re.union (str.to.re "4") (re.union (str.to.re "6") (str.to.re "8"))))) (re.union (str.to.re "0") (re.union (str.to.re "4") (str.to.re "8"))))) ((_ re.capture 50) (re.++ (re.union (str.to.re "1") (re.union (str.to.re "3") (re.union (str.to.re "5") (re.union (str.to.re "7") (str.to.re "9"))))) (re.union (str.to.re "2") (str.to.re "6"))))))))))))) re.end-anchor)))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)