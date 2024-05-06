
function fun(str) {
   var regex = /(NOT)?(\s*\(*)\s*(\w+)\s*(=|&lt;&gt;|&lt;|&gt;|LIKE|IN)\s*(\(([^\)]*)\)|&#39;([^&#39;]*)&#39;|(-?\d*\.?\d+))(\s*\)*\s*)(AND|OR)?/;
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
