
function fun(str) {
   var regex = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}|(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/\d{2}|(0[1-9]|1[0-2])\-(0[1-9]|1\d|2\d|3[01])\-(19|20)\d{2}|(0[1-9]|1[0-2])\-(0[1-9]|1\d|2\d|3[01])\-\d{2}|([1-9]|1[0-2])\/([1-9]|1\d|2\d|3[01])\/(19|20)\d{2}|([1-9]|1[0-2])\/([1-9]|1\d|2\d|3[01])\/\d{2}|([1-9]|1[0-2])\-([1-9]|1\d|2\d|3[01])\-(19|20)\d{2}|([1-9]|1[0-2])\-([1-9]|1\d|2\d|3[01])\-\d{2}|(([0-9])|([0-2][0-9])|([3][0-1]))\-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\-\d{4}|(([0-9])|([0-2][0-9])|([3][0-1]))\-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\-\d{2}$/;
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