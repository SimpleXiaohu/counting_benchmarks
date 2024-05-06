
function fun(str) {
   var regex = /^(A[A-HJ-M]|[BR][A-Y]|C[A-HJ-PR-V]|[EMOV][A-Y]|G[A-HJ-O]|[DFHKLPSWY][A-HJ-PR-Y]|MAN|N[A-EGHJ-PR-Y]|X[A-F]|)(0[02-9]|[1-9][0-9])[A-HJ-P-R-Z]{3}$/;
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
