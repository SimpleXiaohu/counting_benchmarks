
(set-option :produce-models true)
(set-option :inline-size-limit 10000)

(declare-const var0 String)

(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.loop 0 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))) ((_ re.capture 3) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.loop 0 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))) ((_ re.capture 3) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))))) re.end-anchor)) (str.to.re "\x00"))))
;match[1]!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.loop 0 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))) ((_ re.capture 3) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) ))
;/[a-z]+/.test(match[1]) == true
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.loop 0 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))) ((_ re.capture 3) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))))) re.end-anchor)))	; match!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.loop 0 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))) ((_ re.capture 3) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))))) re.end-anchor)) (str.to.re "\x00"))))	
;match[1]!==null
(assert (not (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.loop 0 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))) ((_ re.capture 3) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))))) re.end-anchor)) (re.++ re.all(re.+ (re.range "a" "z")) re.all) )))
;/[a-z]+/.test(match[1]) == false	
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.loop 0 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))) ((_ re.capture 3) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))))) re.end-anchor)))	; match!==null
(assert (str.in.re ((_ str.extract 1) var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.loop 0 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))) ((_ re.capture 3) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))))) re.end-anchor)) (str.to.re "\x00")))
;match[1]==null
(check-sat)
(get-model)
(pop 1)
(push 1)
(assert (str.in.re var0 (re.* (re.range "\x01" "\xff"))))
(assert (not (str.in.re var0 (re.++ (re.++ re.begin-anchor (re.++ ((_ re.loop 0 3) ((_ re.capture 1) (re.++ ((_ re.capture 2) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))) (re.union (str.to.re " ") (re.union (str.to.re "\u{0b}") (re.union (str.to.re "\u{0a}") (re.union (str.to.re "\u{0d}") (re.union (str.to.re "\u{09}") (str.to.re "\u{0c}"))))))))) ((_ re.capture 3) (re.+ (re.union (re.range "\u{0600}" "\u{065f}") (re.union (re.range "\u{066a}" "\u{06ef}") (re.range "\u{06fa}" "\u{06ff}"))))))) re.end-anchor))))	; match == null
(check-sat)
(get-model)
(pop 1)
(exit)