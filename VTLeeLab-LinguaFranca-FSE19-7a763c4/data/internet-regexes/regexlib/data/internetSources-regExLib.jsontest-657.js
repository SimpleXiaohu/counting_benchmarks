
function fun(str) {
   var regex = /<(\s*\/?\s*)\w+?(\s*(([\w-]+=&quot;[^&quot;]*?&quot;)|([\w-]+=&#39;[^&#39;]*?&#39;)|([\w-]+=[^&#39;&quot;<>\s]+)))*(\s*\/?\s*)>/;
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
