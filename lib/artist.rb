require 'pry'

class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        #should know it belongs to artist
        Song.new(name, self, genre)
    end
    
    def songs
        #go through all songs
        #return songs owned by artist
        Song.all.select { |song| song.artist == self }
    end

    def genres
        #go through #songs
        #return genre's of ea song
        self.songs.map { |song| song.genre }
    end

end