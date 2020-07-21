class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.select {|concert| concert.venue == self}
        # binding.pry
    end

    def bands
        concerts.collect {|concert| concert.band}
    end

    def concert_on(date)
        Concert.all.find {|concert|concert.date == date}
        # binding.pry
    end

    def most_frequent_band
        Concert.all.max_by {|concert| concerts.count(self)}
        binding.pry
    end
end