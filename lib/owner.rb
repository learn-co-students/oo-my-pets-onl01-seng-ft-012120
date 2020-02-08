class Owner
  attr_reader :name, :species

  @@all = []
  
  def self.all
    return @@all
  end

  def initialize(name)
    @name = name
    @species = "human"
    @@all.push(self)
  end

  def say_species
    return "I am a #{self.species}."
  end

  def self.count
    return self.all.size
  end

  def self.reset_all
    return self.all.clear
  end
  
  def dogs
    return Dog.all.select {|d| d.owner === self }
  end
  def cats
    return Cat.all.select {|c| c.owner === self }
  end

  def buy_cat(name)
    return Cat.new(name,self)
  end

  def buy_dog(name)
    return Dog.new(name,self)
  end

  def walk_dogs
    return self.dogs.each { |d| d.mood = "happy" }
  end

  def feed_cats
    self.cats.each { |c| c.mood = "happy" }
  end

  def sell_pets
    pets = self.dogs + self.cats
    return pets.each { |p| p.mood = "nervous"; p.owner = nil }
  end

  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end