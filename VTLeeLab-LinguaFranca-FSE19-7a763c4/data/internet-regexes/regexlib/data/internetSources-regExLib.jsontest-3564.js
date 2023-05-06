
function fun(str) {
   var regex = /^((\s|[0])\.(\d{0,2}\s{0,2}))?$|^(\.(\d\s){0,2})?$|^(\s{0,4}[1]{0,1}\.[0]{0,2}\s{0,4})?$|^(\s{0,4}[1]{0,1}\s{0,4})?$|^(\s{0,4}[0]{0,4}[1]{0,1}\s{0,4})?$|^([0]{0,4}\s{0,4})?$|^(\s{0,3}[0]{0,3}\.{1}\d{0,2}\s{0,2})?$/;
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
