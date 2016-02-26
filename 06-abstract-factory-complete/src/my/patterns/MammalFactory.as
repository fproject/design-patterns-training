package my.patterns {
public class MammalFactory extends AnimalFactory{
    override public function createAnimal(type:Class):Animal
    {
        var a:Mammal = super.createAnimal(type) as Mammal;
        a.greeting = a.clapHands();
        return a;
    }
}
}
