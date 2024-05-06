
function fun(str) {
   var regex = /((http|ftp|https|ftps):\/\/)?[\w\-_\.]+\.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|arpa|asia|coop|info|jobs|mobi|museum|name|travel))+(:[0-9]+)?\/?(([\w\-\.,@^%:\/~\+#]*[\w\-\@^%\/~\+#])((\?[a-zA-Z0-9\[\]\-\._+%\$#\=~&#39;,]*=[a-zA-Z0-9\[\]\-\._+%\$#\=~&#39;,]*)+(&[a-zA-Z0-9\[\]\-\._+%\$#\=~&#39;,]*=[a-zA-Z0-9\[\]\-\._+%\$#\=~&#39;,]*)*)?)?/;
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
