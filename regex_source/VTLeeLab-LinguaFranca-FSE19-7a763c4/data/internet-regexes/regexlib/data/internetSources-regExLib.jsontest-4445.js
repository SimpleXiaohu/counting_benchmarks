
function fun(str) {
   var regex = /\-?(90|[0-8]?[0-9]\.[0-9]{0,6})\,\-?(180|(1[0-7][0-9]|[0-9]{0,2})\.[0-9]{0,6})/;
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
