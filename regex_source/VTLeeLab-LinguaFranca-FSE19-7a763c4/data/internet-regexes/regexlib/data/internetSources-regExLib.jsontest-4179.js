
function fun(str) {
   var regex = /^(\d{0,4}(?:\.\d{0,2})?\n  | \n  [-]\d{0,2}(?:\.\d{0,2})?\n )[%]{0,1}$/;
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
