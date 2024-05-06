
function fun(str) {
   var regex = /#^([a-z0-9+\-.]+):([\/]{0,2}([a-z0-9\-._~%!\$&&#39;\(\)\*+,;=:]+@)?([\[\]a-z0-9\-._~%!\$&&#39;\(\)\*+,;=:]+(:[0-9]+)?))([a-z0-9\-._~%!\$&&#39;\(\)\*+,;=:@\/]*)(\?[\?\/a-z0-9\-._~%!\$&&#39;\(\)\*+,;=:@]+)?(\#[a-z0-9\-._~%!\$&&#39;\(\)\*+,;=:@\/\?]+)?#i/;
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
