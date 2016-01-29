/**
 * Created by nguye on 1/23/2016.
 */
package my.patterns {
import mx.core.IVisualElement;

import some.external.lib.BoardItem;
import some.useful.classes.LineGroup;
import some.useful.classes.TextGroup;

public class MyBoardItem extends BoardItem{
    private var lineGroup:LineGroup;
    private var textGroup:TextGroup;
    public function MyBoardItem() {
        lineGroup = new LineGroup();
        textGroup = new TextGroup();
        this.addElement(lineGroup);
        this.addElement(textGroup);
    }

    override public function drawLine(x1:Number, x2:Number, y1:Number, y2:Number):void
    {
        lineGroup.draw(x1,x2,y1,y2);
    }

    override public function drawText(msg:String):void
    {
        textGroup.drawText(msg);
    }
}
}
