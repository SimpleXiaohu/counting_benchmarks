
function fun(str) {
   var regex = /^(3276[0-7]|327[0-5]\d|32[0-6]\d{2}|3[01]\d{3}|[12]\d{4}|[1-9]\d{3}|[1-9]\d{2}|[1-9]\d|\d)$/;
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
