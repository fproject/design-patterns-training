package my.patterns.decorators {
import my.patterns.*;
import my.patterns.runwaymodels.Model;

public class Muff extends AbstractDresser {
    public function Muff(model:Model) {
        super(model);
    }
    override public function getDressed():String {
        return model.getDressed() + "~muff";
    }
}
}
