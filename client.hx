package;

import com.raidandfade.haxicord.websocket.WebSocketConnection;
import com.raidandfade.haxicord.types.Message;
import com.raidandfade.haxicord.commands.CommandBot;

class Main extends CommandBot {
    static function main() {
        new Main("Hello, world.", main, "-"); 
    }

    @Command
    function hello(message:Message) {  
      if (!message.inGuild()) return;
      message.reply({
        content: 'Hey! This is just a simple bot.'
      });
    }
}
