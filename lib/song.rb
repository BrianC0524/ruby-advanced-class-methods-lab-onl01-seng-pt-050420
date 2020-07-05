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
    @@all << song
    song

  end
  
  def self.new_by_name(new_name)
    
<<<<<<< HEAD
    song = self.new
    song.name = new_name
    song
    
  end
  
  def self.create_by_name(name)
    
    song = self.new
    song.name = name
    @@all << song
    song
    
  end
  
  def self.find_by_name(name)
    
    @@all.detect {|song| song.name == name}
    
  end
  
  def self.find_or_create_by_name(name)
    
    self.create_by_name(name)
    self.find_by_name(name)
    
  end
  
  def self.alphabetical
    
    @@all.sort_by {|song| song.name}
    
  end
  
  def self.new_from_filename(name)
    
    song = self.new
    name_array = name.split(" - ")
    song.artist_name = name_array[0]
    song.name = name_array[1].chomp(".mp3")
    song
    
  end
  
  def self.create_from_filename(name)
    
    name = self.new_from_filename(name)
    @@all.push(name)
    
  end
  
  def self.destroy_all
    
    @@all = []
    
  end
    
=======
    song = new_name
    
    song = self.new
    
    
    
  end
>>>>>>> 71b8f8ac3d8f4b5bcd4edc90b61c970f67600f5b

end
