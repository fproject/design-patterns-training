/**
 * Created by nguye on 1/23/2016.
 */
package some.external.lib {
import mx.core.IVisualElement;

public class BoardItem {
    public function drawLine(x1:Number, x2:Number, y1:Number, y2:Number):void
    {
        //Abstract, do nothing
    }
    public function getVisualElement():IVisualElement
    {
        //Abstract, do nothing
        return null;
    }
}
}
