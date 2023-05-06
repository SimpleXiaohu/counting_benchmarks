
function fun(str) {
   var regex = /^((\+)?[1-9]{1,4})?([-\s\.\/])?((\(\d{1,4}\))|\d{1,4})(([-\s\.\/])?[0-9]{1,6}){2,6}(\s?(ext|x)\s?[0-9]{1,6})?$/;
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
