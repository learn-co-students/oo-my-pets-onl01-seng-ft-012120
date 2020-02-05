class Owner
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all = []
  end
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select {|cat| cat.owner == self}
  end
  
  def buy_cat(name)
    pet = Cat.new(name, self)
  end
  
  def buy_dog(name)
    pet = Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.map {|dog| dog.mood = 'happy'}
  end
  
  def feed_cats
    cats.map {|cat| cat.mood = 'happy'}
  end
  
  def sell_pets
    
  end
  
  def list_pets
    
  end
end