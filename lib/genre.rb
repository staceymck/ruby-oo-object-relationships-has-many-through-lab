class Genre
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def songs 
        Song.all.select {|song| song.genre == self}
    end

    def artists
        songs.map {|song| song.artist}
    end
end