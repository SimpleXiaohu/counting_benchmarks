
function fun(str) {
   var regex = /Date Format in dd MMM yyyy ----> (^(3[01]|[12][0-9]|0?[1-9])\s{1}(Jan|Mar|May|Jul|Aug|Oct|Dec)\s{1}((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(30|[12][0-9]|0?[1-9])\s{1}(Apr|Jun|Sep|Nov)\s{1}((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(2[0-8]|1[0-9]|0?[1-9])\s{1}(Feb)\s{1}((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(29)\s{1}(Feb)\s{1}([2468][048]00)$)|(^(29)\s{1}(Feb)\s{1}([3579][26]00)$)|(^(29)\s{1}(Feb)\s{1}([1][89][0][48])$)|(^(29)\s{1}(Feb)\s{1}([2-9][0-9][0][48])$)|(^(29)\s{1}(Feb)\s{1}([1][89][2468][048])$)|(^(29)\s{1}(Feb)\s{1}([2-9][0-9][2468][048])$)|(^(29)\s{1}(Feb)\s{1}([1][89][13579][26])$)|(^(29)\s{1}(Feb)\s{1}([\/])([2-9][0-9][13579][26])$)/;
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
