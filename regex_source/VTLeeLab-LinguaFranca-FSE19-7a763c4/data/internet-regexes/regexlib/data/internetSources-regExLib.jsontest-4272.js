
function fun(str) {
   var regex = /^(((0)[13578]|(10)|(12))(\/)((0[1-9])|([12][0-9])|((3)[01]))(\/)(\d{4}))|(((0)[469]|(11))(\/)((0[1-9])|([12][0-9])|(30))(\/)(\d{4}))|((02)(\/)((0[1-9])|((1)[0-9])|((2)[0-8]))(\/)(\d{4}))|((02)(\/)((0[1-9])|((1)[0-9])|((2)[0-9]))(\/)((\d{2})(([02468][048])|([13579][26]))))$/;
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
