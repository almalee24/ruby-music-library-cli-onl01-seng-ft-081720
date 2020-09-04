class Artist
    attr_accessor :name, :songs
    
    @@all = []

    def initialize(name)
        @name = name 
        @songs = []
    end

    def self.all 
        @@all
    end

    def self.destroy_all
        @@all.clear
    end

    def save 
        @@all << self 
    end

    def self.create(artist)
        song = self.new(artist)
        song.save
        song
    end

    def songs
        @songs
    end

    def add_song(song)
        if song.artist == nil
            song.artist = self 
        end

        if !@songs.include?(song)
            @songs << song 
        end
    end
end