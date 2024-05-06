
function fun(str) {
   var regex = /^((?:[A-HJ-PR-Y][A-HJ-PR-Y]\s?(?:0[2-9]|[1-9][0-9])\s?[A-HJ-PR-Z]{3})|(?:[A-Z](?:[IZ][A-Z]|[A-Z][IZ])\s?\d{1,4})|(?:[A-HJ-NP-TV-Y]\s?\d{1,3}\s?[A-Z]{3})|(?:[A-Z]{3}\s?\d{1,3}\s?[A-HJ-NPR-TV-Y])|(?:\d{1,3}\s?[A-HJ-Y]{1,3}|[A-HJ-Y]{1,3}\s?\d{1,3})|(?:\d{1,4}\s?(?:[IZ][A-Z]|[A-Z][IZ]))|(?:[A-Z]{1,2}\s?\d{1,4}))$/;
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
