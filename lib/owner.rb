
require "pry"

class Owner
  # code goes here
  
 # attr_accessor
 
 @@all = []
  def initialize(name)
    
    @name= name
    @species ="human"
    @@all << self 
    
  end
  def name
    
    @name
    
  end
  
  def species
    
    @species
    
  end
  
  def say_species
    
    "I am a #{@species}."
  end
  
  def self.all 
    
    @@all
  #  binding.pry
  end
  
  def self.count
    
    @@all.count
  end
  
  def self.reset_all
    
    @@all.clear
    
  end
  
  def cats 
  Cat.all.select{|cat_instance| cat_instance.owner== self}
  #binding.pry
  end
  
  def dogs 
    
    Dog.all.select{|dog_instance| dog_instance.owner ==self}
  end
  
  def buy_cat(name)
    
    new_cat = Cat.new(name,self)
    
   #  Cat.all.select{|cat_instance| cat_instance.name== new_cat}
    
  end
  def buy_dog(name)
    
    new_dog = Dog.new(name, self)
   # binding.pry
  end
  
  def walk_dogs
    
   #walk_do = Dog.new(name, self)
   #walk_do.mood = "happy"
  # walk_do
    #binding.pry
    Dog.all.each{|do_instance| do_instance.mood = "happy"}
    #Dog.mood =="happy"
  #  binding.pry
  end
  
  def feed_cats
     cats.each{|do_instance| do_instance.mood = "happy"}
     #walk_do = Dog.new(name, self)
  # walk_do.mood = "happy"
  # walk_do
 # Cat.owner
    #binding.pry
    
   end
    
    
end