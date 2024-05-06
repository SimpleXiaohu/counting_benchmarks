
function fun(str) {
   var regex = /^(4915[0-1]|491[0-4]\d|490\d\d|4[0-8]\d{3}|[1-3]\d{4}|[1-9]\d{0,3}|0)$/;
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
