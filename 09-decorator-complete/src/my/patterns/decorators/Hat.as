package my.patterns.decorators {
import my.patterns.*;
import my.patterns.runwaymodels.Model;

public class Hat extends AbstractDresser {
    private var model:Model;

    public function Hat(model:Model) {
        this.model = model;
    }

    override public function getDressed():String {
        return model.getDressed() + "~hat";
    }
}
}
