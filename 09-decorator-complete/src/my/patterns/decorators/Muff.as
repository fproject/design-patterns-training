package my.patterns.decorators {
import my.patterns.*;
import my.patterns.runwaymodels.Model;

public class Muff extends AbstractDresser {
    private var model:Model;

    public function Muff(model:Model) {
        this.model = model;
    }

    override public function getDressed():String {
        return model.getDressed() + "~muff";
    }
}
}
