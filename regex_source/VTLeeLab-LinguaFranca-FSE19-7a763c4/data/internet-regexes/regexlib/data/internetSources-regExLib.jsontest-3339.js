
function fun(str) {
   var regex = /^(((\d{4})(0[13578]|10|12)(0[1-9]|[12][0-9]|3[01]))|((\d{4})(0[469]|11)([0][1-9]|[12][0-9]|30))|((\d{4})(02)(0[1-9]|1[0-9]|2[0-8]))|(([02468][048]00)(02)(29))|(([13579][26]00) (02)(29))|(([0-9][0-9][0][48])(02)(29))|(([0-9][0-9][2468][048])(02)(29))|(([0-9][0-9][13579][26])(02)(29))|(00000000)|(88888888)|(99999999))?$/;
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