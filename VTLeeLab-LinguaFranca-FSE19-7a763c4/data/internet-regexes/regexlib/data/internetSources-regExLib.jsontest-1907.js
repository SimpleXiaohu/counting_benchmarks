
function fun(str) {
   var regex = /&lt;[aA][ ]{0,}([a-zA-Z0-9&quot;&#39;_,.:;!?@$&amp;()%=\/ ]|[-]|[\t\f]){0,}&gt;((&lt;(([a-zA-Z0-9&quot;&#39;_,.:;!?@$&amp;()%=\/ ]|[-]|[\t\f]){0,})&gt;([a-zA-Z0-9&quot;&#39;_,.:;!?@$&amp;()%=\/ ]|[-]|[\t\f]){0,})|(([a-zA-Z0-9&quot;&#39;_,.:;!?@$&amp;()%=\/ ]|[-]|[\t\f]){0,})){0,}/;
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
