
function fun(str) {
   var regex = /^((29\/0?2\/[0-9]{0,2}(04|08|92|96|([1|3|5|7][2|6])|[2|4|6|8][0|4|8]))|(((28|[12][0-7]|0?[1-9])\/0?2)|((30|[12][0-9]|0?[1-9])\/(0?(4|6|9)|11))|((31|[12][0-9]|0?[1-9])\/(0?(1|3|5|7|8))|(10|12)))\/(\d{2}|\d{4}))$/;
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
