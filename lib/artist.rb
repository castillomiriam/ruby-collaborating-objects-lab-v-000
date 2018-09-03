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

def add_song(song)
  @songs << song
end

def save
  @@all << self
end

def self.find_or_create_by_name
   self.find(name) ? self.find(name) : self.create(name)
end

def print_songs
  self.songs.each do |song|
    puts song.name
  end
end

end
