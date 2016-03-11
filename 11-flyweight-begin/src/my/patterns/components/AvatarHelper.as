/**
 * Created by nguye on 3/12/2016.
 */
package my.patterns.components {
public class AvatarHelper {
    [Embed(source="cat.png")]
    public var cat:Class;
    [Embed(source="dog.png")]
    public var dog:Class;
    [Embed(source="duck.png")]
    public var duck:Class;

    private static var _instance:AvatarHelper;
    public static function getInstance():AvatarHelper
    {
        if(_instance == null)
        {
            _instance = new AvatarHelper();
        }
        return _instance;
    }

    public function getAvatar(name:String):Class
    {
        if(this.hasOwnProperty(name))
            return this[name] as Class;
        return null;
    }
}
}
