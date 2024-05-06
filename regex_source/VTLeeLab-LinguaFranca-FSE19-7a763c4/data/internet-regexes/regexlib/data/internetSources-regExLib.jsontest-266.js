
function fun(str) {
   var regex = /&lt;table&gt;(&lt;tr&gt;((&lt;td&gt;([A-Za-z0-9])*&lt;\/td&gt;)+)&lt;\/tr&gt;)*&lt;\/table&gt;/;
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
