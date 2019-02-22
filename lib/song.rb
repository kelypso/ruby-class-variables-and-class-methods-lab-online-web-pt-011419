class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    # return a hash of genre => count
    count = {}
    @@genres.each do |genre|
      if count[genre] == true # checking if the genre already exists
        count[genre] += 1 
      else
        count[genre] = 1 
      end
    end
    count
  end
  
  def self.artist_count
    # return a hash of artist => count
  end
end

