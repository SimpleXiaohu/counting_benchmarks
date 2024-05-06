
function fun(str) {
   var regex = /^\/{1}(((\/{1}\.{1})?[a-zA-Z0-9 ]+\/?)+(\.{1}[a-zA-Z0-9]{2,4})?)$/;
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
