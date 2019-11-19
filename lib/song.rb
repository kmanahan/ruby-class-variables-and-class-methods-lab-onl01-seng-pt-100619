<<<<<<< HEAD
require 'pry'
=======
>>>>>>> 73f2976715bbeb67d123a879592def962a266147
class Song 
  attr_accessor :name, :artist, :genre
   
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
   
  end 
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end 
  
  def self.artists
    @@artists.uniq
  end  
<<<<<<< HEAD
# you want to be looping over the genres array though like you had originally

# and that does NOT have a value at all

# but like you just defined the empty hash, so theres nothing for us to loop over from that. we wanna loop over our list of genres, then compare them to that empty hash

  def self.genre_count
    hash = {}
    @@genres.each do |key, value|
      if hash[key]
      else 
       hash[key] = @@genres.count(key)
    end
    end
    hash
  end
  def self.artist_count
    hash = {}
    @@artists.each do |key, value|
      if hash[key]
      else 
       hash[key] = @@artists.count(key)
    end
    end
    hash 
=======
  
  def self.genre_count
    
    hash.each do |key, value|
      hash = {key => value}
      if hash.has_key?(key) << value + 1 
      else hash[key] = value
    end
    end
>>>>>>> 73f2976715bbeb67d123a879592def962a266147
  end
end
