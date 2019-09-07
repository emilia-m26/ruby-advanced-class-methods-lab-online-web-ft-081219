# class Song
#   attr_accessor :name, :artist_name
#   @@all = []

#   def self.all
#     @@all
#   end

#   def save
#     self.class.all << self
#   end
  
#   def self.create
#     song = self.new 
#     song.save
#     song
#   end
  
#   def self.new_by_name(name_of_song) 
#     song = self.new
#     song.name = name_of_song
#     song
#   end
  
#   def self.create_by_name(name_of_song)
#     song = self.new
#     song.name = name_of_song
#     song.save
#     song 
#   end  
  
#   def self.find_by_name(name_of_song)
#     self.all.detect do |song|
#       song.name == name_of_song
#     end
#   end
  
#   def self.find_or_create_by_name(name_of_song)
#     if self.find_by_name(name_of_song) == nil
#         self.create_by_name(name_of_song)
#       else
#         self.find_by_name(name_of_song)
#       end
#   end
  
#   def self. alphabetical
#     self.all.sort_by {|song| song.name}
#   end
  
#   def self.new_from_filename(name)
#     song = self.new 
#     song.name = (name.split(" - ")[1].chomp(".mp3"))
#     song.artist_name = (name.split(" - ")[0])
#     song
#   end
  
#   def self.create_from_filename(name)
#     song = self.new
#     song.name = (name.split(" - ")[1].chomp(".mp3"))
#     song.artist_name = (name.split(" - ")[0])
#     self.all << song
#     song
#   end
  
  
#   def self.destroy_all
#     self.all.clear
#   end
  
# end

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
    song = self.new 
    song.name = name 
    song
  end
  
  def self.create_by_name(name)
    song = self.new 
    song.name = name 
    song.save
    song
  end
  
  def self.find_by_name(name)
    self.detect {|person| person.name == name}
  end
 
end





















