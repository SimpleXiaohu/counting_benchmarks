
function fun(str) {
   var regex = /^(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\,*\s\s*\d{4}$|^(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)\,*\s\d{4}$|^(January|February|March|April|May|June|July|August|September|October|November|December)\,*\s\d{4}$|^(january|february|march|april|may|june|july|august|september|october|november|december)\,*\s\d{4}$/;
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
