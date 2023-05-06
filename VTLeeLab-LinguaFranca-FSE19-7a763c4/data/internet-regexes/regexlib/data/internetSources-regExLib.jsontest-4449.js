
function fun(str) {
   var regex = /(([A-HJ-PRSTW]|A[BDHR]|BCK|B[ADEFHK-ORSUW]|BRD|C[AEFHKLNOSTY]|D[AEHKORS]|F[DEHRY]|G[HKNRUWY]|H[HL]|I[EH]|INS|KY|L[AHIKLNORTY]|M[EHLNRT]|N[ENT]|OB|P[DEHLNTWZ]|R[NORXY]|S[ACDEHMNORSTUY]|SSS|T[HNOT]|UL|W[ADHIKNOTY]|YH)[1-9][0-9]{0,2})|([1-9][0-9]{0,2}([A-HJ-PRSTW]|A[BDHR]|BCK|B[ADEFHK-ORSUW]|BRD|C[AEFHKLNOSTY]|D[AEHKORS]|F[DEHRY]|G[HKNRUWY]|H[HL]|I[EH]|INS|KY|L[AHIKLNORTY]|M[EHLNRT]|N[ENT]|OB|P[DEHLNTWZ]|R[NORXY]|S[ACDEHMNORSTUY]|SSS|T[HNOT]|UL|W[ADHIKNOTY]|YH))/;
   var match = str.match(regex);
   if (match) {
      if(match[1]!=null) {
	 if(/[a-z]+/.test(match[1])) 
	    console.log("1");
	 else
	    console.log("2");
      	 }
      else
           console.log("3");
   }
   else
     console.log("4");
}

var S$ = require("S$");
var str = S$.symbol("str", "");
//var str = J$.readString();
fun(str);
