
function fun(str) {
   var regex = /((a|p|A|P)(m|M)\s{0,1}(0[0-9]|1[0-2]|[0-9]):[0-5][0-9]:[0-5][0-9])|((a|p|A|P)(m|M)\s{0,1}(0[0-9]|1[0-2]|[0-9]):[0-5][0-9])|((0[0-9]|1[0-2]|[0-9]):[0-5][0-9]\s{0,1}(a|p|A|P)(m|M))|((0[0-9]|1[0-2]|[0-9]):[0-5][0-9]:[0-5][0-9]\s{0,1}(a|p|A|P)(m|M))|((0[0-9]|1[0-9]|2[0-3]|[0-9]):[0-5][0-9]:[0-5][0-9])|((0[0-9]|1[0-9]|2[0-3]|[0-9]):[0-5][0-9])/;
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
