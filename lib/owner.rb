class Owner

  attr_reader :name, :species 
  
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    return "I am a human."
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
    @cats = []
    Cat.all.each do |cat|
      if cat.owner == self
        @cats << cat 
      end 
    end 
    @cats
  end 

  def dogs
    @dogs = []
    Dog.all.each do |dog|
      if dog.owner == self
        @dogs << dog 
      end 
    end 
    @dogs 
  end 

  def buy_cat(name)
    Cat.new(name, self)
  end 

  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"} 
  end

  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    self.dogs.each do |dog|
      dog.owner = nil
      dog.mood = "nervous"
    end 
    self.cats.each do |cat|
      cat.owner = nil
      cat.mood = "nervous"
    end 
  end 

  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end