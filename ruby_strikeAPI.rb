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
    if request_result == nil || request_result <= 0
      return 0
    else
      return "#{$result[request_result][0]['torrent_title']}"
    end
  end

  def getCategory(request_result = nil)
    if request_result == nil || request_result <= 0
      return 0
    else
      return "#{$result[request_result][0]['torrent_category']}"
    end
  end

  def getSubCategory(request_result = nil)
    if request_result == nil || request_result <= 0
      return 0
    else
      return "#{$result[request_result][0]['sub_category']}"
    end
  end

  def getSeedCount(request_result = nil)
    if request_result == nil || request_result <= 0
      return 0
    else
      return "#{$result[request_result][0]['seeds']}"
    end
  end

  def getLeechCount(request_result = nil)
    if request_result == nil || request_result <= 0
      return 0
    else
      return "#{$result[request_result][0]['leeches']}"
    end
  end

  def getFileCount(request_result = nil)
    if request_result == nil || request_result <= 0
      return 0
    else
      return "#{$result[request_result][0]['file_count']}"
    end
  end

  def getFileSize(request_result = nil)
    if request_result == nil || request_result <= 0
      return 0
    else
      return "#{$result[request_result][0]['size']}"
    end
  end

  def getUploadDate(request_result = nil)
    if request_result == nil || request_result <= 0
      return 0
    else
      return "#{$result[request_result][0]['upload_date']}"
    end
  end

  def getUploaderUserName(request_result = nil)
    if request_result == nil || request_result <= 0
      return 0
    else
      return "#{$result[request_result][0]['uploader_username']}"
    end
  end

  def getFileInformationAllInfo(request_result = nil)

    if(request_result == nil || request_result <= 0)
      return 0
    else
      valueHolder = $result
      vHolder = valueHolder[request_result][0]['file_info']
      vv = vHolder.to_s
      return eval(vv[1...-1])
    end

  end

  def getFileInformation_File_Names(request_result = nil)
    if(request_result == nil || request_result <= 0)
      return 0
    else
      valueHolder = $result
      vHolder = valueHolder[request_result][0]['file_info']
      vv = vHolder.to_s
      vvv = eval(vv[1...-1])
      return vvv['file_names']
    end
  end

  def getFileInformation_File_Lengths(request_result = nil)
    if(request_result == nil || request_result <= 0)
      return 0
    else
      valueHolder = $result
      vHolder = valueHolder[request_result][0]['file_info']
      vv = vHolder.to_s
      vvv = eval(vv[1...-1])
      return vvv['file_lengths']
    end
  end

end

