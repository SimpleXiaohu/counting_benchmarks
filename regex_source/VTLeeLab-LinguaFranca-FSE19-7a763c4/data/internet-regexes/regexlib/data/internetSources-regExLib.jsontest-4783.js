
function fun(str) {
   var regex = /^(?:\s*(Sun|Mon|Tue|Wed|Thu|Fri|Sat)\s*)(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\s+?(0?[1-9]|[1-2][0-9]|3[01])\s+(2[0-3]|[0-1][0-9]):([0-5][0-9]):(60|[0-5][0-9])\s+((?:E|C|M|P)(?:ST|DT))\s+(19[0-9]{2}|[2-9][0-9]{3}|[0-9]{2})/;
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
