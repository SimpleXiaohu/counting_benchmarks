
function fun(str) {
   var regex = /^[a-z0-9!$&#39;*+\-_]+(\.[a-z0-9!$&#39;*+\-_]+)*@([a-z0-9]+(-+[a-z0-9]+)*\.)+([a-z]{2}|aero|arpa|biz|cat|com|coop|edu|gov|info|int|jobs|mil|mobi|museum|name|net|org|pro|travel)$/;
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
