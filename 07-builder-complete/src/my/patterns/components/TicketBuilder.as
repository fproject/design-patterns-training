/**
 * Created by nguye on 2/20/2016.
 */
package my.patterns.components {
import my.patterns.models.CinemaTicket;

public class TicketBuilder {
    public var ticket:CinemaTicket;

    /**
     * Parse raw data and build a Ticket
     * @param s The ticket raw data to parse
     *
     * @throws Error if the raw data cannot be parsed
     *  */
    public function TicketBuilder(s:String) {
        if(s == null)
            throw new Error("Null ticket data");

        this.ticket = new CinemaTicket();

        s = ltrim(s);
        var arr:Array = s.split("\n");
        if(arr.length >= 2)
        {
            var header:String = arr[0];
            var body:String = ltrim(arr[1]);
            var fields:Array = parseHeader(ticket, header);
            parseBody(ticket, fields, body);
        }
    }

    private function parseHeader(ticket:CinemaTicket, head:String):Array
    {
        var parsedHeaderFields:Array = [];
        var headerFields:Array = head.split("|");
        for (var i:int = 0; i < headerFields.length; i++)
        {
            var field:String = ltrim(rtrim(headerFields[i]));
            if(field != "")
            {
                if(ticket.hasOwnProperty(field))
                {
                    parsedHeaderFields.push(field);
                    continue;
                }
            }

            throw new Error("Cannot parse ticket header:\r\n" + head);
        }

        return parsedHeaderFields;
    }

    private function parseBody(ticket:CinemaTicket, fields:Array, body:String):CinemaTicket
    {
        var values:Array = body.split("|");
        for (var i:int = 0; i < fields.length && i < values.length; i++)
        {
            var field:String = fields[i];
            if(ticket.hasOwnProperty(field))
            {
                ticket[field] = values[i];
                continue;
            }
            throw new Error("Cannot parse ticket body:\r\n" + body);
        }

        return ticket;
    }
    private function ltrim(s:String):String
    {
        var i:int = 0;
        while (i < s.length && (s.charAt(i) == " " || s.charAt(i) == "\t" || s.charAt(i) == "\n" || s.charAt(i) == "\r"))
        {
            i++;
        }
        if(i > 0)
        {
            s = s.substr(i);
        }
        return s;
    }

    private function rtrim(s:String):String
    {
        var i:int = s.length - 1;
        while (i >= 0 && (s.charAt(i) == " " || s.charAt(i) == "\t" || s.charAt(i) == "\n" || s.charAt(i) == "\r"))
        {
            i--;
        }
        if(i <0)
            i = 0;
        if(i < s.length - 1 )
        {
            s = s.substr(0, i);
        }
        return s;
    }
}
}
