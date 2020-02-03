class Cat
  # code goes here
  @@all = []
  attr_accessor :owner, :mood
  attr_reader :name

  def initialize(name, owner)
    @name = name
    self.owner = owner
    self.mood = 'nervous'
    self.save
  end

  def save
    @@all << self
  end

  def self.all 
    @@all
  end

  

end