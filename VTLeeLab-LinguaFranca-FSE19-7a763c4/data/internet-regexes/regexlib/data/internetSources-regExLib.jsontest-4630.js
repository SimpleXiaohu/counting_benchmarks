
function fun(str) {
   var regex = /^([A-Z&#196;&#214;&#220;][a-z&#228;&#246;&#252;&#223;]+(([.] )|( )|([-])))+[1-9][0-9]{0,3}[a-z]?$/;
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
