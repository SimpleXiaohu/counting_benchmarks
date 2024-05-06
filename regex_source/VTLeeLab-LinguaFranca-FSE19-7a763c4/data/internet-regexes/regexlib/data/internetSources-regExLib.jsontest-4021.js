
function fun(str) {
   var regex = /(^[Bb][Ff][Pp][Oo]\s*[0-9]{1,4})|(^[Gg][Ii][Rr]\s*0[Aa][Aa]$)|([Aa][Ss][Cc][Nn]|[Bb][Bb][Nn][Dd]|[Bb][Ii][Qq][Qq]|[Ff][Ii][Qq][Qq]|[Pp][Cc][Rr][Nn]|[Ss][Ii][Qq][Qq]|[Ss][Tt][Hh][Ll]|[Tt][Dd][Cc][Uu]\s*1[Zz][Zz])|(^([Aa][BLbl]|[Bb][ABDHLNRSTabdhlnrst]?|[Cc][ABFHMORTVWabfhmortvw]|[Dd][ADEGHLNTYadeghlnty]|[Ee][CHNXchnx]?|[Ff][KYky]|[Gg][LUYluy]?|[Hh][ADGPRSUXadgprsux]|[Ii][GMPVgmpv]|[JE]|[je]|[Kk][ATWYatwy]|[Ll][ADELNSUadelnsu]?|[Mm][EKLekl]?|[Nn][EGNPRWegnprw]?|[Oo][LXlx]|[Pp][AEHLORaehlor]|[Rr][GHMghm]|[Ss][AEGK-PRSTWYaegk-prstwy]?|[Tt][ADFNQRSWadfnqrsw]|[UB]|[ub]|[Ww][A-DFGHJKMNR-Wa-dfghjkmnr-w]?|[YO]|[yo]|[ZE]|[ze])[1-9][0-9]?[ABEHMNPRVWXYabehmnprvwxy]?\s*[0-9][ABD-HJLNP-UW-Zabd-hjlnp-uw-z]{2}$)/;
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
