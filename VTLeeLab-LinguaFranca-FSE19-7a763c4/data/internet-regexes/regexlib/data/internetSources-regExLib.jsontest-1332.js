
function fun(str) {
   var regex = /^(1|1(\s|\s?-\s?|\s?\.\s?|\s?\/\s?))?((\(?[2-9]{1}[\d]{2}\)?(\s|\s?-\s?|\s?\.\s?|\s?\/\s?)?))?(\d{3})(\s|\s?-\s?|\s?\.\s?|\s?\/\s?)?(\d{4})$\n/;
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