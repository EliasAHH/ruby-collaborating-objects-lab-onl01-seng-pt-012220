class Song
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def self.new_by_filename(name)
    file_path =  name.split(" - ")
    new_song = self.new(file_path[1])
    new_song.artist_name = file_path[0]
    new_song
  end 
  
  def artist_name=(name)
    artist_obj  = Artist.find_or_create_by_name(name)
    self.artist = artist_obj
  end 
  
  
end 