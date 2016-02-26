package my.patterns.decorators {
import my.patterns.*;
import my.patterns.runwaymodels.Model;

public class OrangeDress extends AbstractDresser {
    private var model:Model;

    public function OrangeDress(model:Model) {
        this.model = model;
    }

    override public function getDressed():String {
        return model.getDressed() + "~orangedress";
    }
}
}
