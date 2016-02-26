package my.patterns {
public class AnimalFactory {
    public function createAnimal(type:Class):Animal
    {
        var a:Animal = new type();
        a.init();
        return a;
    }

    public static function getFactory(type:Class):AnimalFactory
    {
        if(type == Cat || type == Dog)
            return new MammalFactory;
        else
            return new AnimalFactory();
    }
}
}
