
function fun(str) {
   var regex = /1?(?:[.\s-]?[2-9]\d{2}[.\s-]?|\s?\([2-9]\d{2}\)\s?)(?:[1-9]\d{2}[.\s-]?\d{4}\s?(?:\s?([xX]|[eE][xX]|[eE][xX]\.|[eE][xX][tT]|[eE][xX][tT]\.)\s?\d{3,4})?|[a-zA-Z]{7})/;
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
