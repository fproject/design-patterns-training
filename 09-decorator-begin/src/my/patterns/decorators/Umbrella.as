package my.patterns.decorators {
import my.patterns.*;
import my.patterns.runwaymodels.Model;

public class Umbrella extends Model {
    override public function getDressed():String {
        return "~umbrella";
    }
}
}
