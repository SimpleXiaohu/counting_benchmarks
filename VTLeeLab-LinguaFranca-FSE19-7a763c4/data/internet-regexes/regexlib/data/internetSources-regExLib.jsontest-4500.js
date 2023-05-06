
function fun(str) {
   var regex = /(([IXCM])\2{3,})|[^IVXLCDM]|([IL][LCDM])|([XD][DM])|(V[VXLCDM])|(IX[VXLC])|(VI[VX])|(XC[LCDM])|(LX[LC])|((CM|DC)[DM])|(I[VX]I)|(X[CL]X)|(C[DM]C)|(I{2,}[VX])|(X{2,}[CL])|(C{2,}[DM])/;
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
