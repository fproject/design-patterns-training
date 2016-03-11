package my.patterns {
import my.patterns.components.AvatarHelper;
import my.patterns.components.TicketBuilder;
import my.patterns.data.TicketData;
import my.patterns.models.CinemaTicket;

public class Animal {
    public var avatar:Object;
    public var ticket:CinemaTicket;
    public var name:String;
    public var greeting:String;

    private var isInitialized:Boolean;

    public function say():String
    {
        if(!isInitialized)
            throw new Error("Animal must be initialized before saying!");
        var s:String = this.name + " says:";
        if(greeting != null)
                s += greeting;
        return s;
    }

    protected function get avatarName():String
    {
        return null;
    }

    public function init():void
    {
        var data:TicketData = new TicketData();
        this.ticket = (new TicketBuilder(data.ticketRawData)).ticket;
        this.avatar = AvatarHelper.getInstance().getAvatar(this.avatarName);
        this.isInitialized = true;
    }
}
}
