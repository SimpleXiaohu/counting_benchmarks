
function fun(str) {
   var regex = /((http|https|ftp|telnet|gopher|ms\-help|file|notes):\//)?(([a-z][\w~%!&amp;&#39;,;=\-\.$\(\)\*\+]*)(:.*)?@)?(([a-z0-9][\w\-]*[a-z0-9]*\.)*(((([a-z0-9][\w\-]*[a-z0-9]*)(\.[a-z0-9]+)?)|(((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)))(:[0-9]+)?))?(((\/([\w`~!$=;\-\+\.\^\(\)\|\{\}\[\]]|(%\d\d))+)*\/([\w`~!$=;\-\+\.\^\(\)\|\{\}\[\]]|(%\d\d))*)(\?[^#]+)?(#[a-z0-9]\w*)?)?/;
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
