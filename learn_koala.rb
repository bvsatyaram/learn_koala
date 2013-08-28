require 'rubygems'
require 'koala'
require File.expand_path('../config/learn_koala_config', __FILE__)

module LearnKoala
  def self.fetch_fb_data
    @graph = Koala::Facebook::API.new(Config::FB_ACCESS_TOKEN)
    # puts "Fetching profile"
    # profile = @graph.get_object("me")
    # puts "Fetching friends list"
    # friends = @graph.get_connections("me", "friends")
    # test_wall_post = ""
    # test_wall_post += "This is a test wall post. \n"
    # test_wall_post += "I have #{friends.count} active friends!"
    # puts "Posting to wall"
    # @graph.put_connections("me", "feed", :message => test_wall_post)
    # puts "I posted to your all"
    friend_id = "mkeung"
    mutual_friends = @graph.get_connections("me", "mutualfriends/#{friend_id}")
    puts mutual_friends
  end
end


LearnKoala.fetch_fb_data