/**
 * Created by nguye on 1/30/2016.
 */
package {
import my.patterns.GlobalClass;

public class SomeOtherClient {
    public function SomeOtherClient() {
        if(Main.globalObj == null)
            Main.globalObj = new GlobalClass();
        trace(Main.globalObj.value);
    }
}
}
