package my.patterns.models {
public class CinemaTicket {
    [Bindable]
    public var title:String;

    [Bindable]
    public var standard:String;

    [Bindable]
    public var screenNo:String;

    [Bindable]
    public var price:String;

    [Bindable]
    public var date:String;

    [Bindable]
    public var time:String;

    [Bindable]
    public var rating:String;

    [Bindable]
    public var barcode:String;

    public function CinemaTicket(s:String) {
        if(s != null)
        {
            s = ltrim(s);
            var arr:Array = s.split("\n");
            if(arr.length >= 2)
            {
                var header:String = arr[0];
                var content:String = ltrim(arr[1]);
                var fields:Array = header.split("|");
                var values:Array = content.split("|");
                for (var i:int = 0; i < fields.length && i < values.length; i++)
                {
                    var field:String = fields[i];
                    if(this.hasOwnProperty(field))
                    {
                        this[field] = values[i];
                    }
                }
            }
        }
    }

    private function ltrim(s:String):String
    {
        var i:int = 0;
        while (i < s.length && (s.charAt(i) == " " || s.charAt(i) == "\t" || s.charAt(i) == "\n" || s.charAt(i) == "\r"))
        {
            i++;
        }
        if(i > 0)
        {
            s = s.substr(i);
        }
        return s;
    }
}
}
