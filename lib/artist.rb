class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        
        @@all << self
    end
    
    def save
        @@all
    end

    def self.all
        @@all
    end

    def songs
        @songs
    end

    def add_song(song)
        song.artist = self
        @songs << self
    end

    def self.find_by_name(name)
        @@all.find {|artist| artist.name == name}
    end 

    def self.find_or_create_by_name(name)
        artist = self.find_by_name(name)
        artist ? artist : Artist.new(name)
    end

    def print_songs
        @songs.each do |song|
            pus song.name
        end
    end
end


