
function fun(str) {
   var regex = /(0[1-9]|[12][0-9]|3[01])\s(J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)\s[1-9][0-9]{3}|\n(0[1-9]|[12][0-9]|30)\s(April|June|(Sept|Nov)ember)\s[1-9][0-9]{3}|\n(0[1-9]|1[0-9]|2[0-8])\sFebruary\s[1-9][0-9]{3}|\n29\sFebruary\s((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26]))/;
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
