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
    count = {}
    @@genres.each do |genre|
      if count[genre] # check if genre is already in hash
        count[genre] += 1
      else 
        count[genre] = 1 # if it's a unique genre, set count to 1
      end
    end
    count
  end

  def self.artist_count
    count = {}
    @@artists.each do |artist|
      if count[artist] # check if artist is already in hash
        count[artist] += 1
      else
        count[artist] = 1 # if it's a unique artist, set count to 1
      end
    end
    count
  end
end

