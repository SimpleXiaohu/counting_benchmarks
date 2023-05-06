
function fun(str) {
   var regex = /((v|[\/])\W*[i1]\W*[a@]\W*g\W*r\W*[a@]|v\W*[i1]\W*[c]\W*[o0]\W*d\W*[i1]\W*n)/;
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
