class Concert
    attr_accessor :band, :venue
    attr_reader :date   

    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue

        @@all << self
    end
    
    def self.all
        @@all
    end

    def hometown_show?
        band.hometown == venue.city
        # binding.pry
    end

    def introduction
        "Hello #{venue.city}!!!!, we are #{band.name} and we're from #{band.hometown}"
        # binding.pry
    end
end