package my.patterns {
public class Animal {
    public var name:String;
    private var isInitialized:Boolean;
    public function say():String
    {
        if(!isInitialized)
            throw new Error("Animal must be initialized before saying!");
        return this.name + " says:";
    }

    public function init():void
    {
        isInitialized = true;
    }

    public static function createAnimal(type:Class):Animal
    {
        var a:Animal = new type();
        a.init();
        return a;
    }
}
}
