package my.patterns.decorators {
import my.patterns.runwaymodels.Model;

public class Umbrella extends AbstractDresser {
    public function Umbrella(model:Model) {
        super(model);
    }
    override public function getDressed():String {
        return model.getDressed() + "~umbrella";
    }
}
}
