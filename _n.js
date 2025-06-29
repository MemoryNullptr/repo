function toast(text) { 
    
      Java.perform(function () {
        Java.scheduleOnMainThread(function () {
          Java.use("android.widget.Toast").makeText(Java.use("android.app.ActivityThread").currentApplication().getApplicationContext(), Java.use("java.lang.String").$new(text), 1).show();
        });
      });
    }
setInterval(()=>{toast("ok")},1000);
