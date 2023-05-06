
function fun(str) {
   var regex = /^(\d{4}(?:(?:(?:\-)?(?:00[1-9]|0[1-9][0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-6]))?|(?:(?:\-)?(?:1[0-2]|0[1-9]))?|(?:(?:\-)?(?:1[0-2]|0[1-9])(?:\-)?(?:0[1-9]|[12][0-9]|3[01]))?|(?:(?:\-)?W(?:0[1-9]|[1-4][0-9]5[0-3]))?|(?:(?:\-)?W(?:0[1-9]|[1-4][0-9]5[0-3])(?:\-)?[1-7])?)?)$/;
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
