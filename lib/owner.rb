require 'pry'
class Owner
  
  attr_reader :name
  @@pets = {
    :cats => [],
    :dogs => []
  }
  @@all = []
  def initialize(owner_name)
    @name = owner_name
    @@all << self
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = Array.new
  end

  def cats
    catslist = []
    Cat.all.delete_if do |detail|
      true if detail.owner != self
    end
    @@pets[:cats] 
    catslist = Cat.all
  end

  def dogs
    dogslist = []
    Dog.all.delete_if do |detail|
      true if detail.owner != self
    end
    @@pets[:dogs] 
    dogslist = Dog.all
  end

  def buy_cat(name_of_cat)
    @@pets[:cats] << Cat.new(name_of_cat,self)
  end

  def buy_dog(name_of_dog)
    @@pets[:dogs] << Dog.new(name_of_dog,self)
  end

  def walk_dogs
    Dog.all.each do |doggie|
      doggie.mood = "happy"
    end
  end

  def feed_cats
    Cat.all.each do |cattie|
      cattie.mood = "happy"
    end
  end

  def sell_pets
    Cat.all.each do |cattie|
      cattie.mood = "nervous"
      cattie.owner = nil
    end
    Dog.all.each do |doggie|
      doggie.mood = "nervous"
      doggie.owner = nil
    end
  end

  def list_pets
    "I have #{Dog.all.length} dog(s), and #{Cat.all.length} cat(s)."
  end
  
end