
function fun(str) {
   var regex = /^((((((0[1-9])|(1\d)|(2[0-8]))\.((0[123456789])|(1[0-2])))|(((29)|(30))\.((0[13456789])|(1[0-2])))|((31)\.((0[13578])|(1[02]))))\.\d{4})|((29)\.(02)\.\d{2}(([02468][048])|([13579][26]))))(\s((0\d)|(1\d)|(2[0-3]))\:([0-5]\d)\:([0-5]\d)\.\d{7})$/;
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
