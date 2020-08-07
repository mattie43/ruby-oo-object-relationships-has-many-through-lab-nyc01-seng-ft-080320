require 'pry'

class Genre
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        #check all songs belonging
        #to this genre
        Song.all.select { |song| song.genre == self }
    end

    def artists
        #go thru ea song and collect
        #the artist who owns ea song
        self.songs.map { |song| song.artist }
    end

end