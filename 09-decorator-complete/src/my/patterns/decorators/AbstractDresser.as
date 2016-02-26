package my.patterns.decorators {
import my.patterns.runwaymodels.Model;

//The Decorator: Abstract class
public class AbstractDresser extends Model {
    override public function getDressed():String {
        return whatToWear;
    }
}
}
