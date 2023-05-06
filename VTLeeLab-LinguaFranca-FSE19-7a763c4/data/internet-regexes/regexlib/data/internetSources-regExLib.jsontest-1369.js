
function fun(str) {
   var regex = /^(?:(?:\(|)0|\+27|27)(?:1[12345678]|2[123478]|3[1234569]|4[\d]|5[134678])(?:\) | |-|)\d{3}(?: |-|)\d{4}$/;
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
