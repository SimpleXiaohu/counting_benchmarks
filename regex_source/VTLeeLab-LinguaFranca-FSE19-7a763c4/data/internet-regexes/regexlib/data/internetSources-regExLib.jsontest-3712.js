
function fun(str) {
   var regex = /(^([1-9]|[1][0-2]):([0-5][0-9])(\s{0,1})(AM|PM|am|pm|aM|Am|pM|Pm{2,2})$)|(^([0-9]|[1][0-9]|[2][0-3]):([0-5][0-9])$)|(^([1-9]|[1][0-2])(\s{0,1})(AM|PM|am|pm|aM|Am|pM|Pm{2,2})$)|(^([0-9]|[1][0-9]|[2][0-3])$)/;
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
