
function fun(str) {
   var regex = /^(((((0?[1-9]|[12]\d|3[01])[-\/]([0]?[13578]|1[02]))|((0?[1-9]|[12]\d|30)[-\/]([0]?[469]|11))|(([01]?\d|2[0-8])[-\/]0?2))[-\/]((20|19)?\d{2}|\d{1,2}))|(29[-\/]0?2[-\/]((19)|(20))?([13579][26]|[24680][048])))$/;
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
