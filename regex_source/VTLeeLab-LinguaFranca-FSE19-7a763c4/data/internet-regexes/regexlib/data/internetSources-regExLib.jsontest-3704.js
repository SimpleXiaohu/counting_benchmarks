
function fun(str) {
   var regex = /(LOC[^&#39;]*&#39;)(GID[^&#39;]*&#39;)?(GDS[^&#39;]*&#39;)?(FTX[^&#39;]*&#39;){0,9}(MEA[^&#39;]*&#39;){1,9}(DIM[^&#39;]*&#39;){0,9}(TMP[^&#39;]*&#39;)?(RNG[^&#39;]*&#39;)?(LOC[^&#39;]*&#39;){0,9}(RFF[^&#39;]*&#39;)((EQD[^&#39;]*&#39;)(EQA[^&#39;]*&#39;){0,9}(NAD[^&#39;]*&#39;)?){0,3}/;
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
