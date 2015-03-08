require 'rubygems'
require 'open-uri'
require 'json'
require 'pp'

class Ruby_strikeAPI

  def constructURL(user_Hash)
    return result = JSON.parse(open('http://getstrike.net/api/torrents/info/?hashes=' + user_Hash).read)
  end

end

#each result is an array of hashes, the first array result[0] contains stats about your query
#results[n] will list a specific result
#printing results will print the whole thing out
Foo = Ruby_strikeAPI.new

sp = Foo.constructURL('B425907E5755031BDA4A8D1B6DCCACA97DA14C04')
puts "#{sp[1][0]['torrent_title']}"