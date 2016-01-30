package some.useful.classes
{
import spark.components.HGroup;
import spark.components.Label;

public class TextGroup extends HGroup
{
    public function draw(msg:String):void
    {
        var lbl:Label = new Label();
        lbl.text = msg;
        this.addElement(lbl);
    }

    public function sayGreeding():void
    {

    }

    public function saySomething():void
    {

    }
}
}