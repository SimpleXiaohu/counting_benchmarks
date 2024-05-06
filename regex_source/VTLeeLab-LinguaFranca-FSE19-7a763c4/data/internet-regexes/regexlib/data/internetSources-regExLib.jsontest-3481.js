
function fun(str) {
   var regex = /^([a-yA-Y]{3,4}(?:\.?|[a-yA-Y]{1,6}?)\s?\d?\d(?:[d-tD-T]{2})?\,?\s?(?:\&#39;?\d\d|\d{4}))$/;
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
