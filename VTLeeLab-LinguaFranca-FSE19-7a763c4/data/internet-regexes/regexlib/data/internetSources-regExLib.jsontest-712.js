
function fun(str) {
   var regex = /^((0[1-9]|1[0-9]|2[0-4])[0-59]\d{7}(00[1-9]|[0-9][1-9][0-9]|[1-9][0-9][0-9]))|((0[1-9]|1[0-9]|2[0-4])6\d{6}(000[1-9]|[0-9][0-9][1-9][0-9]|[0-9][1-9][0-9][0-9]|[1-9][0-9][0-9][0-9]))$/;
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
