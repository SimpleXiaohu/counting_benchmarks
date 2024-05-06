
function fun(str) {
   var regex = /^((1[6789]|[2-9][0-9])[0-9]{2}-(0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))$|^((1[6789]|[2-9][0-9])[0-9]{2}-(0[469]|11)-(0[1-9]|[12][0-9]|30))$|^((16|[248][048]|[3579][26])00)|(1[6789]|[2-9][0-9])(0[48]|[13579][26]|[2468][048])-02-(0[1-9]|1[0-9]|2[0-9])$|^(1[6789]|[2-9][0-9])[0-9]{2}-02-(0[1-9]|1[0-9]|2[0-8])$/;
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
