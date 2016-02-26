package my.patterns {
public class Animal {
    public var name:String;
    public var greeting:String;

    private var isInitialized:Boolean;
    public function say():String
    {
        if(!isInitialized)
            throw new Error("Animal must be initialized before saying!");
        var s:String = this.name + " says:";
        if(greeting != null)
                s += greeting;
        return s;
    }

    public function init():void
    {
        isInitialized = true;
    }
}
}
