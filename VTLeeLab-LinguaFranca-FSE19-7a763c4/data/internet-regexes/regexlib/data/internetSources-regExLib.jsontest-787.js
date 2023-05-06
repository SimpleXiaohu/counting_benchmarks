
function fun(str) {
   var regex = / ^(0{0,1}[1-9]|[12][0-9]|3[01])[- \/.](0{0,1}[1-9]|1[012])[- \/.](\d{2}|\d{4})$/;
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
