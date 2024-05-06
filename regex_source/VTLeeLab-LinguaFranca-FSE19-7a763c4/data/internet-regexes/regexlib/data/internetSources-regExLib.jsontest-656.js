
function fun(str) {
   var regex = /(\(0\d\d\)\s\d{3}[\s-]+\d{4})|(0\d\d[\s-]+\d{3}[\s-]+\d{4})|(0\d{9})|(\+\d\d\s?[\(\s]\d\d[\)\s]\s?\d{3}[\s-]?\d{4})/;
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
