
function fun(str) {
   var regex = /^P(([0-9]+([.,][0-9]*)?Y)?([0-9]+([.,][0-9]*)?M)?([0-9]+([.,][0-9]*)?D)?T?([0-9]+([.,][0-9]*)?H)?([0-9]+([.,][0-9]*)?M)?([0-9]+([.,][0-9]*)?S)?)|\d{4}-?(0[1-9]|11|12)-?(?:[0-2]\d|30|31)T((?:[0-1][0-9]|[2][0-3]):?(?:[0-5][0-9]):?(?:[0-5][0-9]|60)|2400|24:00)$/;
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
