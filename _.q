const b =  Process.getModuleByName("libqplay.so").base
const ggg = b.add(0x30AAA8);
const qqq = b.add(0x30A918);
var hq = 4;

if(new Date('2026-01-29') < new Date()){

}else{


 function www(tt){
    Java.perform(function () { 
    Java.scheduleOnMainThread(function() {
             Java.use("android.widget.Toast").makeText(Java.use("android.app.ActivityThread").currentApplication().getApplicationContext(), Java.use("java.lang.String").$new(tt), 1).show();
    });
});
 }

Memory.protect(ggg, 8, "rwx")
Memory.protect(qqq, 8, "rwx")
Interceptor.attach(b.add(0x0182B50), {
    onEnter: function (args) {
     ggg.writeDouble(hq);
     
    },
    onLeave: function (retval) {
        ggg.writeDouble(4.0);
        
    }
});
var llqq = 0;
Interceptor.attach(b.add(0x00257310), {
    onEnter: function (args) {
        let kkcq = args[3];
        console.log(kkcq)
   if ((kkcq == 0x8 || kkcq == 0x9) && args[2] == 1 ) {
            var ccccc = Date.now(); 
            var deeff = (ccccc - llqq) / 1000; 
            if (deeff < 0.2) {
              return;
            }
            let val = kkcq == 0x8 ? -0.1 : 0.1;
            if(hq+val >= 0 &&  hq + val <= 4){
               hq += val;
            }else if(val == -0.1){
                hq = 0;
            }else{
                hq = 4;
            }
            www("" + hq.toFixed(1));
            llqq = ccccc;
        }
    }
});

}
