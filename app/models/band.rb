class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.select {|concert| concert.band == self}
        # binding.pry
    end

    def play_in_venue(venue, date)
        Concert.new(date, self, venue)
        # binding.pry
    end

    # def all_introductions
    #     concerts
    #     binding.pry
    # end

    

end