
function fun(str) {
   var regex = /(?:(?:Data Source)|(?:Server))=([\s*\w\.]+?);\s*?(?:(?:Initial Catalog)|(?:Database))=(\s*\w+?);\s*?(?:(?:User Id)|(?:Uid))=(\s*\w+?);\s*?(?:(?:password)|(?:Pwd))=(\s*\w+?);\s*?(?:(?:Integrated Security)|(?:Integrated security))=(\s*\w*);$/;
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
