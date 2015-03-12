=begin
========================================================================================================================
Created by Jose Tobar
Date Created: March 7, 2014
Purpose: The purpose of this program is to give create an easy to use wrapper for Ruby user for getstrike.net/api
For more information see: getstrike.net/api
========================================================================================================================
=end

require 'rubygems'
# http://ruby-doc.org/stdlib-2.0.0/libdoc/open-uri/rdoc/OpenURI.html
require 'open-uri'
# https://github.com/flori/json
require 'json'
# http://stackoverflow.com/questions/9008847/what-is-difference-between-p-and-pp
require 'pp'

class Ruby_strikeAPI

  def constructURL(user_Hash)
    return $result = JSON.parse(open('http://getstrike.net/api/torrents/info/?hashes=' + user_Hash).read)
  end

  def getHash(request_result = nil)
    if request_result == nil
      return 0
    elsif request_result == 0
      return 0
    else
      return "#{$result[request_result][0]['torrent_hash']}"
    end
  end

  def getTitle(request_result = nil)
    if request_result == nil
      return 0
    elsif request_result == 0
      return 0
    else
      return "#{$result[request_result][0]['torrent_title']}"
    end
  end

end

Foo = Ruby_strikeAPI.new
example = Foo.constructURL('B425907E5755031BDA4A8D1B6DCCACA97DA14C04')
puts rr = Foo.getTitle(1)