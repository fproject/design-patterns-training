/**
 * Created by nguye on 2/27/2016.
 */
package utils {
public class ClothingUtil {
    [Embed(source="claudia.png")]
    public var claudia:Class;
    [Embed(source="bluedress.png")]
    public var bluedress:Class;
    [Embed(source="bow.png")]
    public var bow:Class;
    [Embed(source="hat.png")]
    public var hat:Class;
    [Embed(source="muff.png")]
    public var muff:Class;
    [Embed(source="orangedress.png")]
    public var orangedress:Class;
    [Embed(source="umbrella.png")]
    public var umbrella:Class;

    private static var _instance:ClothingUtil;
    public static function getInstance():ClothingUtil
    {
        if(_instance == null)
        {
            _instance = new ClothingUtil();
        }
        return _instance;
    }

    public function prepareToCatwalk(cloth:String):Class
    {
        if(this.hasOwnProperty(cloth))
            return this[cloth] as Class;
        return null;
    }

}
}
