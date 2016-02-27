package my.patterns.decorators {
import my.patterns.runwaymodels.Model;

public class OrangeDress extends AbstractDresser {
    public function OrangeDress(model:Model) {
        super(model);
    }
    override public function getDressed():String {
        return model.getDressed() + "~orangedress";
    }
}
}
