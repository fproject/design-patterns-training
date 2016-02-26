/**
 * Created by nguye on 2/27/2016.
 */
package utils {
public class ImageUtil {
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

    private static var _instance:ImageUtil;
    public static function getInstance():ImageUtil
    {
        if(_instance == null)
        {
            _instance = new ImageUtil();
        }
        return _instance;
    }

}
}
