class Help < SlackRubyBot::Commands::Base
  HELP = <<-EOS.freeze
```
 :ruby:-bot, here to help.
General
-------
ru-bot help                      - get this helpful message

!RemindMe <DUR> <MSG>            - recieve a dm with MSG
ru-bot remind <DUR> <MSG>          and link DUR from now
```
EOS
  def self.call(client, data, _match)
    client.say(channel: data.channel, text: [HELP, SlackRubyBotServer::INFO].join("\n"))
    logger.info "HELP: #{client.owner}, user=#{data.user}"
  end
end