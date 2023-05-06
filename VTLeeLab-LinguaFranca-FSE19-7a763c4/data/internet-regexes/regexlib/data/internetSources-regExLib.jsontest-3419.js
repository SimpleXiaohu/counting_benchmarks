
function fun(str) {
   var regex = /(SELECT\s[\w\*\)\(\,\s]+\sFROM\s[\w]+)|\n(UPDATE\s[\w]+\sSET\s[\w\,\&#39;\=]+)|\n(INSERT\sINTO\s[\d\w]+[\s\w\d\)\(\,]*\sVALUES\s\([\d\w\&#39;\,\)]+)|\n(DELETE\sFROM\s[\d\w\&#39;\=]+)/;
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
