
function fun(str) {
   var regex = /[\u0024\u20AC\u00A5A-Z\s]{0,4}[0-9.,]+[\s\u0024\u20AC\u00A5A-Z]{0,4}/;
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
