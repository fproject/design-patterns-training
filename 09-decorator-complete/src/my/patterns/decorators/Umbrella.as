package my.patterns.decorators {
import my.patterns.*;
import my.patterns.runwaymodels.Model;

public class Umbrella extends AbstractDresser {
    private var model:Model;

    public function Umbrella(model:Model) {
        this.model = model;
    }

    override public function getDressed():String {
        return model.getDressed() + "~umbrella";
    }
}
}
