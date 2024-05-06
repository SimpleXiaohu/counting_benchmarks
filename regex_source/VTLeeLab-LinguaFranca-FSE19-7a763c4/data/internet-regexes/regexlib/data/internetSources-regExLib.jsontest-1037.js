
function fun(str) {
   var regex = /(https?:\//)?((?:(\w+-)*\w+)\.)+(?:com|org|net|edu|gov|biz|info|name|museum|[a-z]{2})(\/?\w?-?=?_?\??&?)+[\.]?[a-z0-9\?=&_\-%#]*/;
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
