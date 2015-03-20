=begin
========================================================================================================================
Created by Jose Tobar
Date Created: March 7, 2014
Purpose: The purpose of this program is to give create an easy to use wrapper for Ruby user for getstrike.net/api
For more information see: getstrike.net/api
========================================================================================================================
=end

#this is how you include my library
require './ruby_strikeAPI.rb'

#this is how you instantiate the class
instantiateExample = Ruby_strikeAPI.new

#in quotations is what your query should be
exampleQuery = instantiateExample.constructURL_Hash('B425907E5755031BDA4A8D1B6DCCACA97DA14C04')

#getting the output is done like this:
exampleGetInformation = instantiateExample.getFileInformationAllInfo(1)
#getting download link
exampleGetDownloadLink = instantiateExample.getDownloadLink('B425907E5755031BDA4A8D1B6DCCACA97DA14C04')

exampleSearchResult = instantiateExample.searchTorrents('Slackware 14.1 x86_64 DVD ISO')

exampleDownloadLinkFromSearch = instantiateExample.getDownloadLinkFromSearchResult(1)

puts exampleDownloadLinkFromSearch
puts exampleSearchResult
puts exampleGetDownloadLink
puts exampleGetInformation