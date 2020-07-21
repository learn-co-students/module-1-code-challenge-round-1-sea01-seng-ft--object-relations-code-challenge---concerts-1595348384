require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


band1 = Band.new("Nirvana", "Seattle")
band2 = Band.new("Outkast", "Atlanta")
band3 = Band.new("Pixies", "Boston")
band4 = Band.new("Sound Garden", "Seattle")

venue1 = Venue.new("Paramount", "Seattle")
venue2 = Venue.new("Neptune Theater", "Seattle")
venue3 = Venue.new("House of Blues", "Boston")
venue4 = Venue.new("Tabernacle", "Atlanta")

concert1 = Concert.new("10/10/1990", band1, venue1)
concert2 = Concert.new("10/10/1990", band4, venue2)
concert3 = Concert.new("11/10/2018", band2, venue4)
concert4 = Concert.new("01/15/2001", band3, venue3)
concert5 = Concert.new("06/15/2003", band2, venue1)
concert6 = Concert.new("09/28/2008", band3, venue2)
concert7 = Concert.new("04/03/1996", band4, venue3)
concert8 = Concert.new("06/15/1991", band1, venue4)
concert9 = Concert.new("07/19/2997", band1, venue1)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
