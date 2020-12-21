class Artist
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

    def new_song(song_name, genre)
        song = Song.new(song_name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        songs.collect {|song| song.genre}
    end
end
