package my.patterns.runwaymodels {
//Abstract class for a walking model
public class Model {
    public function wear(cloth:Class):Model
    {
        return new cloth(this) as Model;
    }

    protected var whatToWear:String;

    public function getDressed():String {
        return whatToWear;
    }
}
}
