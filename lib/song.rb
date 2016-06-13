

class Song
  attr_accessor :name, :artist, :genre
  extend Concerns::Findable
  
  @@all = []
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    self.new(name).tap {|song| song.save}
  end
  
  def self.destroy_all
    self.all.clear
  end
end