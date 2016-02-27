package my.patterns.decorators {
import my.patterns.runwaymodels.Model;

public class Hat extends AbstractDresser {
    public function Hat(model:Model) {
        super(model);
    }
    override public function getDressed():String {
        return model.getDressed() + "~hat";
    }
}
}
