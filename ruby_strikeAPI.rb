require 'rubygems'
require 'open-uri'
require 'json'
require 'pp'

class Ruby_strikeAPI

  def constructURL(user_Hash)
    return result = JSON.parse(open('http://getstrike.net/api/torrents/info/?hashes=' + user_Hash).read)
  end

end
