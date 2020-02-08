class Dog
  
  attr_accessor :owner
  attr_reader :name
  
  @@all = [] 
  
  def initialize(name, owner)
    @name = name
    @owner = owner
  end   
    
end