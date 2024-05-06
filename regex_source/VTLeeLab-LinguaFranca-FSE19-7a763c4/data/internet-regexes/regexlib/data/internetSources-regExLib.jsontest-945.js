
function fun(str) {
   var regex = /^\s*-?(\d{0,7}|10[0-5]\d{0,5}|106[0-6]\d{0,4}|1067[0-4]\d{0,3}|10675[0-1]\d{0,2}|((\d{0,7}|10[0-5]\d{0,5}|106[0-6]\d{0,4}|1067[0-4]\d{0,3}|10675[0-1]\d{0,2})\.)?([0-1]?[0-9]|2[0-3]):[0-5]?[0-9](:[0-5]?[0-9](\.\d{1,7})?)?)\s*$/;
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
