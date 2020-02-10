require 'pry'

class Owner
  attr_reader :name, :species
  attr_accessor :cat, :dog  
  
  @@all = []
  
  
  def initialize(name, species = "human")
    @name = name 
    @species = species
    @pets = {:cat => [], :dog => []}
    @@all << self 
  end
  
  #def pets
    #@pets
  #end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all 
    @@all
  end
  
  def self.count 
    @@all.length 
  end
  
  def self.reset_all 
    @@all.clear 
  end
  
  def cats 
    Cat.all.select {|cat| cat.owner == self} 
  end
  
  def buy_cat(cat)
    @pets[:cat] << Cat.new(cat, self)
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self} 
  end
  
  def buy_dog(dog)
    @pets[:dog] << Dog.new(dog, self)
  end
  
  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    #binding.pry
    pets = self.dogs + self.cats 
    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil 
    end
  end
  
  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
  
      
end