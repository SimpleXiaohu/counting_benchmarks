
function fun(str) {
   var regex = /^((((0?[13578]|1[02])\/([0-2]?[1-9]|20|3[0-1]))|((0?[469]|11)\/([0-2]?[1-9]|20|30))|(0?2\/([0-1]?[1-9]|2[0-8])))\/((19|20)?\d{2}))|(0?2\/29\/((19|20)?(04|08|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76|80|84|88|92|96)|2000))$/;
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
