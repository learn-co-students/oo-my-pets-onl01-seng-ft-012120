require 'pry' 

@@all = []

class Owner
  attr_reader :name, :species
  
  def initialize (name)
    @name = name
    @species = "human"
    
    save 
  end   
  
  def say_species
    "I am a human."
  end   
  
  def self.all
    @@all
  end 
  
  def save
    @@all << self 
  end   
  
end