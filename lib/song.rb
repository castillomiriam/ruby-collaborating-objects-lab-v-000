class Song

  attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def self.new_by_filename(filename)
  song = self.new
   song.name = filename.split(" - ")[0]
   song.artist = filename.split(" - ")[1]
   song
 end


def artist_name=(name)
  if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

end
