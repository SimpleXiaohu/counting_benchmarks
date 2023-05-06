
function fun(str) {
   var regex = /^([a-z]{1,6}[ &#39;]){0,3}([&#201;&#200;&#202;&#203;&#220;&#219;&#206;&#212;&#196;&#207;&#214;&#196;&#197;&#199;A-Z]{1}[&#233;&#232;&#235;&#234;&#252;&#251;&#231;&#238;&#244;&#226;&#239;&#246;&#228;&#229;a-z]{2,}[- &#39;]){0,3}[A-Z]{1}[&#233;&#232;&#235;&#234;&#252;&#251;&#231;&#238;&#244;&#226;&#239;&#246;&#228;&#229;a-z]{2,}$/;
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
