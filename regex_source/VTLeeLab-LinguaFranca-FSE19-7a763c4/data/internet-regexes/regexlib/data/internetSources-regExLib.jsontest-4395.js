
function fun(str) {
   var regex = /((0[1-9]|1[0-9]|2[0-9]|3[01])\/(?:0[13578]|1[02])\/(?:1[2-9]\d+|2[0-9]\d+))|((0[1-9]|1[0-9]|2[0-8])\/(?:02)\/(?:1[2-9]\d+|2[0-9]\d+))|(29\/(?:02)\/((1200|1600|2000|2400)|(1[6-9]|2[0-9])((0[48]|1[26]|2[048]|3[26]|4[048]|5[26]|6[048]|7[26]|8[048]|9[26]))))|((0[1-9]|1[0-9]|2[0-9]|30)\/(?:0[469]|11)\/(?:1[2-9]\d+|2[0-9]\d+))/;
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
