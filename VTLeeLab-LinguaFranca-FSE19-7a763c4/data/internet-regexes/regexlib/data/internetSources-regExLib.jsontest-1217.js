
function fun(str) {
   var regex = /Dynamical Solar Power Pack This portable product is designed to power digital devices like laptops, digital cameras, phones, blue tooth earphones, GPS, Pads, PSP, MP3 players and MP4 players and is equipped with alternative lighting modes. In the meanwhile, it can jump start a car. Key words: multifunctional solar charger panel; outdoor solar charger for iphone; portable foldable outdoor solar charger; hiking solar charger for iphone; multi charger mobile devices a.Quick details Place of Origin: China (Mainland) Brand Name: Sunharmonics Model Number: SY-DSPP Accessories: Emergency Power Supply and Charger Bag Flexibility: Portable Size: 258*160*25mm Output: 30W Solar panel: Flexible CIGS Weight: 1.5kg b.Packaging & Delivery Delivery Detail: Shipped in 15 days after payment c.Product Description ? Power 5V,12V~19V electronics ? Jump start automobile ? 30W portable solar charger ? LED displays battery charging state ? Safe, high efficiency lithium battery ? Built-in LED illumination light ? Selectable output voltage ? Dedicated USB outlet d.Applications e.Accessories The dynamical solar power pack is equipped with 20W or 30W solar charger and multifunction jump starter kit. SY-SPF20SY-SPF30 Maximum power20W30W Maximum tolerance&#177;7%&#177;7% Voc28.8V22.8V Isc1.5A2.1A Peak voltage19.2V18.8V Peak current1.4A1.6A Size folded290*196*25mm258*160*25mm Weight300g560g Output interfaceSAE\/DC+USBSAE\/DC+USB Working temperature-40~70?-40~70? Warranty1 year1 year Multifunction jump starter kit Outputs5V\/2.1A\u2014USB devices 12V?16V?19V\/3.5A\u201412Vdevices 12V\/200A\u2014car emergency start output Size170*79*41mm Charging methodCC\/CV 15V 1A Peak current400A(3S) Cyclic life3000 times Working temperature-10?\u201485?  cheap Multifunctional Emergency Solar Charger website:http:\//www.sygdcigscell.com\/outdoor-modules\/multifunctional-emergency-solar-charger\//;
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
