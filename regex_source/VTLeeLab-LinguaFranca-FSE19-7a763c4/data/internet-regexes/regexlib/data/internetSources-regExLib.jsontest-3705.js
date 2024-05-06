
function fun(str) {
   var regex = /((EQD[^&#39;]*&#39;)(RFF[^&#39;]*&#39;){0,9}(EQN[^&#39;]*&#39;)?(TMD[^&#39;]*&#39;){0,9}(DTM[^&#39;]*&#39;){0,9}(LOC[^&#39;]*&#39;){0,9}(MEA[^&#39;]*&#39;){0,9}(DIM[^&#39;]*&#39;){0,9}(TMP[^&#39;]*&#39;){0,9}(RNG[^&#39;]*&#39;){0,9}(SEL[^&#39;]*&#39;){0,9}(FTX[^&#39;]*&#39;){0,9}(DGS[^&#39;]*&#39;){0,9}(EQA[^&#39;]*&#39;){0,9}(NAD[^&#39;]*&#39;)?)((TDT[^&#39;]*&#39;)(RFF[^&#39;]*&#39;){0,9}(LOC[^&#39;]*&#39;){0,9}(DTM[^&#39;]*&#39;){0,9})?/;
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
