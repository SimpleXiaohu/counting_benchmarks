
function fun(str) {
   var regex = /([AEHKLTY][ABEHKLMPRSTWXYZ]|B[ABEHKLMT]|C[ABEHKLR]|GY|[JS][ABCEGHJKLMNPRSTWXYZ]|M[AWX]|N[ABEHLMPRSWXYZ]|O[ABEHKLMPRSX]|P[ABCEGHJKLMNPRSTWXY]|R[ABEHKMPRSTWXYZ]|W[ABEKLMP]|Z[ABEHKLMPRSTWXY])[0-9]{6}[A-D]?/;
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
