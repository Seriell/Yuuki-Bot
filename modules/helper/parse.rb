# Copyright Seriel 2016-2017

module YuukiBot
  module Helper

    # Accepts a message, and returns the message content, with all mentions + channels replaced with @user#1234 or #channel-name
    # noinspection RubyArgCount,RubyArgCount,RubyArgCount
    def self.parse_mentions(content)
      # Replace user IDs with names
      loop do
        match = /<@\d+>/.match(content)
        break if match.nil?
        # We have to sub to just get the numerical ID.
        num_id = /\d+/.match(match[0])[0]
        content = content.sub(id, get_user_name(num_id, bot))
      end
      loop do
        match = /<@!\d+>/.match(content)
        break if match.nil?
        # We have to sub to just get the numerical ID.
        num_id = /\d+/.match(match[0])[0]
        content = content.sub(id, get_user_name(num_id, bot))
      end
      # Replace channel IDs with names
      loop do
        match = /<#\d+>/.match(content)
        break if match.nil?
        # We have to gsub to just get the numerical ID.
        num_id = /\d+/.match(match[0])[0]
        content = content.sub(id, get_channel_name(num_id, bot))
      end
      return content
    end

    # Returns a user-readable username for the specified ID.
    def self.get_user_name(user_id)
        return begin
          '@' + Commandrb.bot.user(user_id).distinct
        rescue NoMethodError
          '@invalid-user'
        end
    end

    # Returns a user-readable channel name for the specified ID.
    def self.get_channel_name(channel_id)
      return  begin
                '#' + Commandrb.bot.channel(channel_id).name
              rescue NoMethodError
                '#deleted-channel'
              end
    end

    def self.filter_everyone(text)
      # Place a null into @everyone and @here, to prevent accidental tagging. Returns the parsed text.
      return text.gsub('@everyone', "@\x00everyone").gsub('@here', "@\x00here")
    end
  end
end
