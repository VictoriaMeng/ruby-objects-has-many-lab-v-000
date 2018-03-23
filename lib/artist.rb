class Artist
  attr_accessor :name, :songs

  @@all_songs = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    song
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end

  def self.song_count
  
  end
end

