
function fun(str) {
   var regex = /&quot;^\s*((([\w-]+\.)+[\w-]+|([a-zA-Z]{1}|[\w-]{2,}))@(\w+\.)+[A-Za-z]{2,5}[?= ]?[?=,;]?[?= ]?)+?$&quot;/;
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
