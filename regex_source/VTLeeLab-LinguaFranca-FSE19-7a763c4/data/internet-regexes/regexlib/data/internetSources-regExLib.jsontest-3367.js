
function fun(str) {
   var regex = /&lt;input[^&gt;]*?type[\/s]*=[\/s]*([&#39;|&quot;]?)text\1[^&gt;]*?value[\/s]*=[\/s]*([&#39;|&quot;])(.*?)\2[^&gt;]*?&gt;\n\n\n\n/;
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
