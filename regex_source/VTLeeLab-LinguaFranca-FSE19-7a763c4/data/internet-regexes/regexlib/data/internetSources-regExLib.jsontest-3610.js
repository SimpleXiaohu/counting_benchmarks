
function fun(str) {
   var regex = /^((02[0-9]{2})|(0[8-9][0-9]{2})|(1[0-9]{3})|(2[0-7][0-9]{2})|(28[0-8][0-9])|(289[0-8])|(29[0-9]{2})|([3-5][0-9]{3})|(6[0-6][0-9]{2})|(67[0-8][0-9])|(679[0-7])|(6[8-9][0-9]{2})|([7-9][0-9]{3}))$/;
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
