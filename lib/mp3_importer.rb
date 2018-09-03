class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path =  path

  end

  def files
    Dir.foreach(MP3Importer.new('./db/mp3s').import) do
|mp3|
  end

  def import(list_of_filenames)
    list_of_filenames.each{ |filename|
    Song.new_by_filename(filename) }
  end


end
