/**
 * Created by nguye on 1/23/2016.
 */
package some.useful.classes {
import some.useful.classes.*;

import mx.core.IVisualElement;

import some.utility.classes.BoardItem;
import some.utility.classes.LineGroup;

public class MyBoardItem extends BoardItem{
    private var adaptee:LineGroup;
    public function MyBoardItem() {
        adaptee = new LineGroup();
    }

    override public function drawLine(x1:Number, x2:Number, y1:Number, y2:Number):void
    {
        adaptee.draw(x1,x2,y1,y2);
    }
    override public function getVisualElement():IVisualElement
    {
        return adaptee;
    }
}
}
