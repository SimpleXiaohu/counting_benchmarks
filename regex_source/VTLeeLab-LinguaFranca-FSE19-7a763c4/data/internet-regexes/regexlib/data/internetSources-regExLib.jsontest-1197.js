
function fun(str) {
   var regex = /((\d{1,6}\-\d{1,6})|(\d{1,6}\\d{1,6})|(\d{1,6})(\/)(\d{1,6})|(\w{1}\-?\d{1,6})|(\w{1}\s\d{1,6})|((P\.?O\.?\s)((BOX)|(Box))(\s\d{1,6}))|((([R]{2})|([H][C]))(\s\d{1,6}\s)((BOX)|(Box))(\s\d{1,6}))?)$/;
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
