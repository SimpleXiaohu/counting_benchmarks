
function fun(str) {
   var regex = /^(?:[\+]?[\(]?([\d]{1,3})[\s\-\.\)]+)?(?:[\(]?([\d]{1,3})[\s\-\/\)]+)([2-9][0-9\s\-\.]{6,}[0-9])(?:[\s\D]+([\d]{1,5}))?$/;
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
