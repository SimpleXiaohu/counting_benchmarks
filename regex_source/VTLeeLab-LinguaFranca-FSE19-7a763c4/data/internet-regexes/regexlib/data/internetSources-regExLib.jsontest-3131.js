
function fun(str) {
   var regex = /^(((0[1-9]{1})|(1[0-2]{1}))\/?(([0-2]{1}[1-9]{1})|(3[0-1]{1}))\/?(([12]{1}[0-9]{1})?[0-9]{2}) ?(([01]{1}[0-9]{1})|(2[0-4]{1}))\:?([0-5]{1}[0-9]{1}))$/;
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