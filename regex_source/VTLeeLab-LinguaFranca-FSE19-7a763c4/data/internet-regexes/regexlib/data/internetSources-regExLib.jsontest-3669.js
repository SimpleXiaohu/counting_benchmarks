
function fun(str) {
   var regex = /\A(([a-zA-Z]{1,2}\d{1,2})|([a-zA-Z]{2}\d[a-zA-Z]{1}))\x20{0,1}\d[a-zA-Z]{2}\Z/;
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
