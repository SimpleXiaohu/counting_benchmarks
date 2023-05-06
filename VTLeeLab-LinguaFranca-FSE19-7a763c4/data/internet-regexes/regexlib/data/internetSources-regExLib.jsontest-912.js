
function fun(str) {
   var regex = /^[ 1(]{0,3}?([02-9][0-9]{2})\D{0,2}([0-9]{3})\D?([0-9]{4})($|\D+.+$)/;
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
