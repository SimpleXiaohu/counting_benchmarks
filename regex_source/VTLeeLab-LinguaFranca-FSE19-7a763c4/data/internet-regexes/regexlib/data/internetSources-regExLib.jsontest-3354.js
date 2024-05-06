
function fun(str) {
   var regex = /(\d{1,2})\W+(\d{1,2})\W*(\d{2,4})?|(\d{4})\W(\d{1,2})\W(\d{1,2})|([a-zA-Z]+)\W*(\d{1,2})\W+(\d{2,4})|(\d{4})\W*([a-zA-Z]+)\W*(\d{1,2})|(\d{1,2})\W*([a-zA-Z]+)\W*(\d{2,4})|(\d{1,2})\W*([a-zA-Z]+)|([a-zA-Z]+)\W*(\d{1,2})|(\d{2})(\d{2})(\d{2,4})?/;
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
