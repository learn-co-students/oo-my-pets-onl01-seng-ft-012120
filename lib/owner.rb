require 'pry'
class Owner
  
  attr_reader :name
  
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


  ##dealing with pets below this line

  def cats
    #@@pets[:cats] = Cat.all_cats
    binding.pry
  end
  
end