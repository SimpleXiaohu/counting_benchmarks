
function fun(str) {
   var regex = /^(\s(SUN|MON|TUE|WED|THU|FRI|SAT)\s+(JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC)\s+(0?[1-9]|[1-2][0-9]|3[01])\s+(2[0-3]|[0-1][0-9]):([0-5][0-9]):((60|[0-5][0-9]))\s+(19[0-9]{2}|[2-9][0-9]{3}|[0-9]{2}))$/;
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
