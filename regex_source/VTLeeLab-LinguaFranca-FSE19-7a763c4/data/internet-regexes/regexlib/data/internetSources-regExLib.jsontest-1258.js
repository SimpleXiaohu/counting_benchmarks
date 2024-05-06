
function fun(str) {
   var regex = /^((A(((H[MX])|(M(P|SN))|(X((D[ACH])|(M[DS]))?)))?)|(K7(A)?)|(D(H[DLM])?))(\d{3,4})[ABD-G][CHJK-NPQT-Y][Q-TV][1-4][B-E]$/;
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
