
function fun(str) {
   var regex = /(?:@[A-Z]\w*\s+)*(?:(?:public|private|protected)\s+)?(?:(?:(?:abstract|final|native|transient|static|synchronized)\s+)*(?:<(?:\?|[A-Z]\w*)(?:\s+(?:extends|super)\s+[A-Z]\w*)?(?:(?:,\s*(?:\?|[A-Z]\w*))(?:\s+(?:extends|super)\s+[A-Z]\w*)?)*>\s+)?(?:(?:(?:[A-Z]\w*(?:<[A-Z]\w*>)?|int|float|double|char|byte|long|short|boolean)(?:(?:\[\]))*)|void)+)\s+(([a-zA-Z]\w*)\s*\(\s*(((?:[A-Z]\w*(?:<(?:\?|[A-Z]\w*)(?:\s+(?:extends|super)\s+[A-Z]\w*)?(?:(?:,\s*(?:\?|[A-Z]\w*))(?:\s+(?:extends|super)\s+[A-Z]\w*)?)*>)?|int|float|double|char|boolean|byte|long|short)(?:(?:\[\])|\.\.\.)?\s+[a-z]\w*)(?:,\s*((?:[A-Z]\w*(?:<[A-Z]\w*>)?|int|float|double|char|byte|long|short|boolean)(?:(?:\[\])|\.\.\.)?\s+[a-z]\w*))*)?\s*\))/;
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
