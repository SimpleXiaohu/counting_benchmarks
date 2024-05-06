
function fun(str) {
   var regex = /^(atuvwdxyzad|abcefdghijd|almnodpqrsd|a&#223;?ded???&#181;d?p?sd)(ktuvwdxyzad|kbcefdghijd|klmnodpqrsd|k&#223;?ded???&#181;d?p?sd)*/;
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
