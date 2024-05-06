
function fun(str) {
   var regex = /\A((?:[01]{0,1}\d)|(?:[2][0123])):([012345]\d):([012345]\d)(.\d{1,3})?([Z]|(?:[+-]?(?:[01]{0,1}\d)|(?:[2][0123])):([012345]\d))\Z/;
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
