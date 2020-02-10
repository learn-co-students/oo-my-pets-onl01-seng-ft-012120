
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
end