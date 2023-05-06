
function fun(str) {
   var regex = /(^[A-Z&#192;-&#220;]{1}[a-z&#224;-&#252;&#39;]+\s[a-zA-Z&#224;-&#252;&#192;-&#220;]+((([\s\.&#39;])|([a-z&#224;-&#252;&#39;]+))|[a-z&#224;-&#252;&#39;]+[a-zA-Z&#224;-&#252;&#192;-&#220;&#39;]+))/;
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
