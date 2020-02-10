class Cat
  # code goes here
  attr_accessor :nervous 
  
  
  @@all = []
  
  def initialize(name,owner)
    
        @name = name
 
        @owner = owner
        @nervous = "nervous"
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
    
  end
  
  def owner=(owner)
    
     @owner = owner
    
  
  end
  
  def mood
    
   @nervous
  end
  
   def mood=(nervous)
    
   @nervous="playful"
  end
  
  def self.all
    @@all
  end
  
  #def cats 
  #self.all.count
  #end
end