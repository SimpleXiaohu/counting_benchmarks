
function fun(str) {
   var regex = /^([0]\d|[1][0-2]\/([0-2]\d|[3][0-1])\/([2][0]\d{2})\s([0-1]\d|[2][0-3])\:[0-5]\d\:[0-5]\d)?\s(AM|am|aM|Am|PM|pm|pM|Pm)/;
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
