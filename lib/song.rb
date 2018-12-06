require'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name(name)
    song = Song.new
    song.name = name 
    song 
  #binding.pry
  end 
  
  def self.create_by_name(name)
    song = Song.create
    song.name = name 
    song 
  end
  
  def self.find_by_name(song_name)
    @@all.find do |x|
     x.name == song_name
    end
  end
end
