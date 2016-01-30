package my.patterns {
public class Animal {
    private var isInitialized:Boolean;
    public function say():String
    {
        if(!isInitialized)
            throw new Error("Animal must be initialized before saying!");
        return null;
    }

    public function init():void
    {
        isInitialized = true;
    }
}
}
