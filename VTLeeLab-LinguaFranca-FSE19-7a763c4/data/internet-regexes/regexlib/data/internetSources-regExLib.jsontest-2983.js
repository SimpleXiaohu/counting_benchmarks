
function fun(str) {
   var regex = /^(([A-Z]{1}[a-z]+([\-][A-Z]{1}[a-z]+)?)([ ]([A-Z]\.)){0,2}[ ](([A-Z]{1}[a-z]*)|([O]{1}[\&#39;]{1}[A-Z][a-z]{2,}))([ ](Jr\.|Sr\.|IV|III|II))?)$/;
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
