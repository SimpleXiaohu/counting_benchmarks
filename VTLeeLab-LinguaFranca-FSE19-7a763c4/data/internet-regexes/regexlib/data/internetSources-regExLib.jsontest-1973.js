
function fun(str) {
   var regex = /[\/,,\/.,\/=,\s]([0-6]\d{2}|7[0-6]\d|77[0-2])(\s|\-)?(\d{2})\2(\d{4})[\/,,\/.,\s]/;
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
