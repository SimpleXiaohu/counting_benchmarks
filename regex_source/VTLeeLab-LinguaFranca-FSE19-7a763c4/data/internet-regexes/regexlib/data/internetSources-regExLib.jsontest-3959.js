
function fun(str) {
   var regex = /^((([A-PR-UWYZ])([0-9][0-9A-HJKS-UW]?))|(([A-PR-UWYZ][A-HK-Y])([0-9][0-9ABEHMNPRV-Y]?))\s{0,2}(([0-9])([ABD-HJLNP-UW-Z])([ABD-HJLNP-UW-Z])))|(((GI)(R))\s{0,2}((0)(A)(A)))$/;
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
