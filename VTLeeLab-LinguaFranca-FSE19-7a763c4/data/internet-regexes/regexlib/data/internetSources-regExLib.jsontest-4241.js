
function fun(str) {
   var regex = /^\(?(?:(?:0(?:0|11)\)?[\s-]?\(?|\+)(44)\)?[\s-]?\(?(?:0\)?[\s-]?\(?)?|0)([1-9]\d{1,4}\)?[\s\d-]+)(?:((?:x|ext\.?\s?|\#)\d+)?)$ /;
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
