class Artist
  attr_accessor :name, :songs

  @@all_songs = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    @@add_songs += 1
    song.artist = self
    song
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end

  def self.song_count
    @@all_songs
  end
end
