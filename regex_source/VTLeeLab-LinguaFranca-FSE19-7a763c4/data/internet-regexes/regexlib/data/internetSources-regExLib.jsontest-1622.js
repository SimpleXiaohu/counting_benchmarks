
function fun(str) {
   var regex = /^(([\u0600-\u065F\u066A-\u06EF\u06FA-\u06FF]+)\s){3}([\u0600-\u065F\u066A-\u06EF\u06FA-\u06FF]+)$/;
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
