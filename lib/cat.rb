class Cat
  attr_accessor :mood, :owner
  attr_reader :name

  @@all = []
  
  def self.all
    return @@all
  end
  
  def initialize(name,owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@all.push(self)
  end
end