
function fun(str) {
   var regex = /^([0-2][0-9]\:[0-5][0-9]\:[0-5][0-9])\s+up\s+([0-9\:]{1,5})\s*(days|day|min|mins)?(?:\,\s+([0-9\:]{1,5})\s*(days|day|min|mins)?)?\,\s+([0-9]{1,4})\susers?\,\s+load\s+average\:\s+([0-9\.]{1,6})\,\s+([0-9\.]{1,6})\,\s+([0-9\.]{1,6})$/;
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
