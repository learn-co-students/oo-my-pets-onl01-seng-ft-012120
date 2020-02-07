class Dog
  @@all = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @@all << self
    @mood = "nervous"
  end 
  attr_reader :name  
  attr_accessor :mood, :owner 
  
  def self.all
    @@all
  end
end