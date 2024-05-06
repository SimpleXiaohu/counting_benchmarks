
function fun(str) {
   var regex = /(-?(90[ :&#176;d]*00[ :\&#39;\&#39;m]*00(\.0+)?|[0-8][0-9][ :&#176;d]*[0-5][0-9][ :\&#39;\&#39;m]*[0-5][0-9](\.\d+)?)[ :\?\&quot;s]*(N|n|S|s)?)[ ,]*(-?(180[ :&#176;d]*00[ :\&#39;\&#39;m]*00(\.0+)?|(1[0-7][0-9]|0[0-9][0-9])[ :&#176;d]*[0-5][0-9][ :\&#39;\&#39;m]*[0-5][0-9](\.\d+)?)[ :\?\&quot;s]*(E|e|W|w)?)/;
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
