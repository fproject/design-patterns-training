package my.patterns {
public class Dog extends Animal {
    override public function say():String
    {
        return super.say() + " Woof-woof-woof\r\n";
    }

    override public function init():void
    {
        super.init();
        this.name = "A dog";
    }
}
}
