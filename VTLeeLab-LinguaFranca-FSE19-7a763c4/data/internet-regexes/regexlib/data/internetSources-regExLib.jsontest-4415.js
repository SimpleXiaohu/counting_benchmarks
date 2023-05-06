
function fun(str) {
   var regex = /^([A-HJ-PR-Y]{2,2}[056][0-9]\s?[A-HJ-PR-Y]{3,3})$|^([A-HJ-NP-Y]{1,3}[0-9]{2,3}?\s[A-Z]{3,3})$|^([A-Z]{1,3}\s?[0-9]{1,4}([A-Z]{1,1})?)$|^([0-9]{4,4}[A-Z]{1,3})$|^([A-Z]{1,2}\s?[0-9]{1,4})$|^([A-Z]{2,3}\s?[0-9]{1,4})$|^([0-9]{1,4}\s?[A-Z]{2,3})$/;
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
