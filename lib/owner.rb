require "pry"
class Owner
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end 

  attr_reader :name, :species 
  
  def say_species
   a ="I am a human."
   a
  end
  
  def dogs 
    arr =[]
    Dog.all.each{|dog| arr << dog if dog.owner == self}
    arr
  end
  
  def cats 
    arr =[]
    Cat.all.each{|cat| arr << cat if cat.owner == self}
    arr
  end 
  
  def buy_cat(name)
    name = Cat.new(name, self)
  end
  
  def buy_dog(name)
    name = Dog.new(name, self)
  end
  
  def walk_dogs
    Dog.all.each{|dog| dog.mood = "happy" if dog.owner == self}
  end
  
  def feed_cats
    Cat.all.each{|cat| cat.mood = "happy" if cat.owner == self}
  end
  
  def sell_pets
    Cat.all.each do |cat|
      if cat.owner == self
        cat.mood = "nervous"
        cat.owner = nil 
      end 
    end
    Dog.all.each do |dog|
      if dog.owner == self
        dog.mood = "nervous"
        dog.owner = nil 
      end
    end
  end
  
  def list_pets
    dog_count = 0 
    cat_count = 0 
    Cat.all.each{|cat| cat_count += 1 if cat.owner == self}
    Dog.all.each{|dog| dog_count += 1 if dog.owner == self}
    a = "I have #{dog_count} dog(s), and #{cat_count} cat(s)."
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
end




