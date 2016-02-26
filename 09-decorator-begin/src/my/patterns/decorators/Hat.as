package my.patterns.decorators {
import my.patterns.*;
import my.patterns.runwaymodels.Model;

public class Hat extends Model {
    override public function getDressed():String {
        return "~hat";
    }
}
}
