class Owner
  # code goes here
  attr_reader :name, :species 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    save
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all 
    return @@all 
  end 
  
  def say_species
    return "I am a #{self.species}."
  end 
  
  def self.count 
    return self.all.count
  end 
  
  def self.reset_all
    self.all.clear
  end 
  
  def cats 
    return Cat.all.select do |cat|
      cat.owner == self
    end
  end 
  
  def dogs 
    return Dog.all.select do |dog|
      dog.owner == self 
    end 
  end 
  
  def buy_cat(name)
    Cat.new(name, self)
  end 
  
  def buy_dog(name)
    Dog.new(name, self)
  end 
  
  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end 
  end 
  
  def feed_cats 
    self.cats.each do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def list_pets 
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)." 
  end 
  
  def sell_pets
    current_pets = dogs + cats 
    
    current_pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil 
    end 
  end 
end