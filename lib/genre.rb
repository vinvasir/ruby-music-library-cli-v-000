class Genre
  attr_accessor :songs, :artists
  attr_reader :name
  extend Concerns::Findable

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end
  
  def self.all
    @@all
  end
  
  def name=(name)
    @name = name
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    self.new(name).tap {|genre| genre.save}
  end
  
  def self.destroy_all
    self.all.clear
  end
end