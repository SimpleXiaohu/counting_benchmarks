
function fun(str) {
   var regex = /^(\d{4}-((0[1-9]|1[012])-(0[1-9]|1\d|2[0-8])|(0[13456789]|1[012])-(29|30)|(0[13578]|1[02])-31)|(\d{2}[02468][048]|[13579][26])-02-29) (0[0-9]|1[0-9]|2[0-4]):(60|[0-5][0-9]):(60|[0-5][0-9])$/;
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