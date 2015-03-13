#this is how you include my library
require './ruby_strikeAPI.rb'

#this is how you instantiate the class
instantiateExample = Ruby_strikeAPI.new

exampleQuery = instantiateExample.constructURL('B425907E5755031BDA4A8D1B6DCCACA97DA14C04')#in quotations is what your query should be

#getting the output is done like this:

exampleGetInformation = instantiateExample.getFileInformationAllInfo(1)
puts exampleGetInformation