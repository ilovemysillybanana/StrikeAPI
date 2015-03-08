# StrikeAPI
There are different parameters to get different information.


If you were to call:
B425907E5755031BDA4A8D1B6DCCACA97DA14C04

You'd receive:

[{"results":1,"statuscode":200,"responsetime":0.0012},[{"torrent_hash":"B425907E5755031BDA4A8D1B6DCCACA97DA14C04","torrent_title":"Arch Linux 2015.01.01 (x86\/x64)","torrent_category":"Applications","sub_category":"","seeds":645,"leeches":13,"file_count":1,"size":"587 MB","upload_date":"Jan  6, 2015","uploader_username":"The_Doctor-","file_info":[{"file_names":["archlinux-2015.01.01-dual.iso"],"file_lengths":[615514112]}]}]]
This is actually two arrays of hashes.

#each result is an array of hashes, the first array result[0] contains stats about your query
#results[n] will list a specific result
#printing results will print the whole thing out
Foo = Ruby_strikeAPI.new#initialize our class

#this is how you pass in your hashes
sp = Foo.constructURL('B425907E5755031BDA4A8D1B6DCCACA97DA14C04')
#the first result, is number one

#the second zero needs to be a set so it knows in the second array, use the first array of a hash given
puts "#{sp[1][0]['torrent_title']}"