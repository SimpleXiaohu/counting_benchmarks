
function fun(str) {
   var regex = /[\&quot;&quot;=:;,](([\w][\w\-\.]*)\.)?([\w][\w\-]+)(\.([\w][\w\.]*))?\sql\d{1,3}[\&quot;&quot;=:;,]/;
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
