
function fun(str) {
   var regex = /([0-8]?\d(&#176;|\s)[0-5]?\d(&#39;|\s)[0-5]?\d(\.\d{1,6})?&quot;?|90(&#176;|\s)0?0(&#39;|\s)0?0&quot;?)\s{0,}[NnSs]\s{1,}([0-1]?[0-7]?\d(&#176;|\s)[0-5]?\d(&#39;|\s)[0-5]?\d(\.\d{1,6})?&quot;?|180(&#176;|\s)0?0(&#39;|\s)0?0&quot;?)\s{0,}[EeOoWw]/;
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
