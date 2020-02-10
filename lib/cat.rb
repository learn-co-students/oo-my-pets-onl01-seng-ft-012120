require "pry"

class Cat
  # code goes here
  attr_accessor :mood
  
  
  @@all = []
  
  def initialize(name,owner)
    
        @name = name
 
        @owner = owner
        @mood = "nervous"
        @@all << self
  end
  
  #def name=(name) 
    
    # @name = name
     
 # end
  
  def name
    
    @name
    
  end
  
  def owner
    
    @owner
  #binding.pry  
  end
  
  def owner=(owner)
    
     @owner = owner
    
  
  end
  
  def mood
    
   @mood
  end
  
   def mood=(nervous)
    
   @mood="playful"
  end
  
  def self.all
    @@all
  end
  
  #def cats 
  #self.all.count
  #end
end