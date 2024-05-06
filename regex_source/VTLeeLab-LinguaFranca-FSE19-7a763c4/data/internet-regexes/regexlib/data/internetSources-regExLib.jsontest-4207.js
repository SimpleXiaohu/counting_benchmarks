
function fun(str) {
   var regex = /^(00[1-9]|0[1-9][0-9]|[1-7][0-9][0-9]|7[0-7][0-2]|77[0-2])(\d{6})(A|B([1-9]?|[ADGHJKLNPQRTWY])|C([1-9]|[A-Z])|D([1-9]?|[ACDGHJKLMNPQRSTVWXYZ])|E([1-9]?|[ABCDFGHJKM])|F([1-8])|J([1-4])|K([1-9]|[ABCDEFGHJLM])|T([ABCDEFGHJKLMNPQRSTUVWXYZ2]?)|M|W([1-9]?|[BCFGJRT]))$/;
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
