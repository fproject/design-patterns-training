package my.patterns.decorators {
import my.patterns.*;
import my.patterns.runwaymodels.Model;

public class BlueDress extends AbstractDresser {
    private var model:Model;

    public function BlueDress(model:Model) {
        this.model = model;
    }

    override public function getDressed():String {
        return model.getDressed() + "~bluedress";
    }
}
}
