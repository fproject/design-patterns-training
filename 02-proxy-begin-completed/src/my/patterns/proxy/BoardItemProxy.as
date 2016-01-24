/**
 * Created by nguye on 1/23/2016.
 */
package my.patterns.proxy {
import mx.core.IVisualElement;

import some.useful.classes.MyBoardItem;

import some.utility.classes.BoardItem;

import spark.components.TextArea;

public class BoardItemProxy extends BoardItem{
    private var boardIem:MyBoardItem;

    public var logger:TextArea;

    public function BoardItemProxy(logger:TextArea) {
        boardIem = new MyBoardItem();
        this.logger = logger;
    }

    override public function drawLine(x1:Number, x2:Number, y1:Number, y2:Number):void
    {
        logger.appendText("Starting draw:" + x1 +","+y1+" to "+x2+","+y2);
        boardIem.drawLine(x1,x2,y1,y2);
        logger.appendText("...done");
    }
    override public function getVisualElement():IVisualElement
    {
        return boardIem.getVisualElement();
    }
}
}
