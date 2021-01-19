class Artist
    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
       @songs
    end

    def add_song(song)
      @songs << song
       
    end

    def save
        @@all << self
    end

    def self.find_by_name(name)
        @@all.find {|artist| artist.name == name}
    end 

    def self.find_or_create_by_name(name)
        artist = @@all.find {|artist| artist.name == name}
            if artist == nil 
                artist = Artist.new(name)
                artist.save
            end
            @@all.last
    end
        
        # artist = self.find_by_name(name)
        # artist ? artist : Artist.new(name)

    def print_songs
        @songs.each{|song| puts "#{song}"}

    end
end


