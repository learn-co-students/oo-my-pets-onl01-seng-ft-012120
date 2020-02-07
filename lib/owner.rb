require 'pry'

class Owner
  attr_reader :name, :species
  attr_accessor :cats, :dogs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end
  
  def say_species
    "I am a human."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end    
  
  def walk_dogs
    self.dogs.each do |a_dog|
      a_dog.mood = "happy"
    end
  end
  
  def feed_cats
    self.cats.each do |a_cat|
      a_cat.mood = "happy"
    end
  end
  
  def sell_pets
    self.dogs.each do |a_dog|
      a_dog.mood = "nervous"
      a_dog.owner = nil
    end
    self.cats.each do |a_cat|
      a_cat.mood = "nervous"
      a_cat.owner = nil
    end
    self.dogs.clear
    self.cats.clear
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end
