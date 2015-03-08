# StrikeAPI
There are different parameters to get different information.


If you were to call:
> B425907E5755031BDA4A8D1B6DCCACA97DA14C04

You'd receive:

> [{"results":1,"statuscode":200,"responsetime":0.0012},[{"torrent_hash":"B425907E5755031BDA4A8D1B6DCCACA97DA14C04","torrent_title":"Arch Linux 2015.01.01 (x86\/x64)","torrent_category":"Applications","sub_category":"","seeds":645,"leeches":13,"file_count":1,"size":"587 MB","upload_date":"Jan  6, 2015","uploader_username":"The_Doctor-","file_info":[{"file_names":["archlinux-2015.01.01-dual.iso"],"file_lengths":[615514112]}]}]]
This is actually two arrays of hashes.

Each result is an array of hashes, the first array result[0] contains stats about your query
>results[n]
will list a specific result
printing results will print the whole thing out

This is how to initialize the class
>Foo = Ruby_strikeAPI.new

This is how you pass in your hash paramaters
> example = Foo.constructURL('B425907E5755031BDA4A8D1B6DCCACA97DA14C04')

The first result, is number one if you put in zero as the first array you'll get the result statistics array hash
>puts "#{example[1][0]['results']}"


The second zero needs to be a set so it knows in the second array, use the first array of a hash given
>puts "#{example[1][0]['torrent_title']}"

Possible Command Parameters
For Result Statistics:
'results'
'statuscode'
'responsetime'

For Torrent Information:
>'torrent_hash'
Return a string containing the original hash.

>'torrent_title'
Returns a string containing the title of the torrent

>'torrent_category'
Returns a string containing the category of a torrent

>'sub_category'
Returns a string containing the sub category of a torrent

>'seeds'
Returns an integer value containing the number of seeds

>'leeches'
Returns an integer value containing the number of leechers

>'file_count'
Returns an integer value containing the number of files in a torrent

>'size'
Returns a float value containing the amount of memory used by a torrent

>'upload_date'
Returns a string containing the date a torrent was uploaded

>'uploader_username'
Returns a string containing the torrent's uploader's user name

>'file_info'
Returns a hash containing information about the file

>'file_names' 'file_length'
Used in conjunction with file_info to get a hash of file names, and file lengths