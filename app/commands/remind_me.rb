class RemindMe < SlackRubyBot::Commands::Base
  def self.call(client, data, _match)
    puts client
    puts '*' * 50
    puts data
    puts '*' * 50
    puts _match
    puts '*' * 50
  end
end