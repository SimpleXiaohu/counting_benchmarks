
function fun(str) {
   var regex = /^(0[1-9]|[12][0-9]|3[01])[\s\.\-\/](J(anuary|uly|an|AN)|M(arch|ar|AR|ay|AY)|A(ugust|ug|UG)|(O(ctober|ct|CT)|(D(ecember|ec|EC))))[\s\.\-\/][1-9][0-9]{3}|(0[1-9]|[12][0-9]|30)[\s\.\-\/](A(pril|pr|PR)|J(une|un|UN)|S(eptember|ep|EP)|N(ovember|ov|OV))[\s\.\-\/][1-9][0-9]{3}|(0[1-9]|1[0-9]|2[0-8])[\s\.\-\/]F(ebruary|eb|EB)[\s\.\-\/][1-9][0-9]{3}|29[\s\.\-\/]F(ebruary|eb|EB)[\s\.\-\/]((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26]))$/;
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
