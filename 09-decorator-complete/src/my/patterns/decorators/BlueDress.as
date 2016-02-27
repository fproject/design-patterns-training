package my.patterns.decorators {
import my.patterns.runwaymodels.Model;

public class BlueDress extends AbstractDresser{
    public function BlueDress(model:Model) {
        super(model);
    }

    override public function getDressed():String {
        return model.getDressed() + "~bluedress";
    }
}
}
