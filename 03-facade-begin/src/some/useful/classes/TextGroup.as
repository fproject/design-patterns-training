package some.useful.classes
{
import spark.components.HGroup;
import spark.components.Label;

public class TextGroup extends HGroup
{
    public function drawText(msg:String):void
    {
        var lbl:Label = new Label();
        lbl.text = msg;
        this.addElement(lbl);
    }
}
}