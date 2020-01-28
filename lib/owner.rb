class Owner
  #attr_accessor :name
  attr_reader :species, :name

    @@all_owner = []

  def initialize(name = nil)
    @species = 'human'
    @name = name
    @@all_owner << self
    @cats =[]
    @dogs =[]
  end

  def cats
    Cat.all.select{|i| i.owner == self}
  end

  def dogs
    Dog.all.select{|i| i.owner == self}
    
  end

  def self.all 
    @@all_owner
  end

  def say_species
    puts "I am a #{species}."
    "I am a #{species}."
  end

  def self.count 
    @@all_owner.count
  end

  def self.reset_all
    @@all_owner = []
  end

  def add_animal(animal)
    animal.owner = self
  end


  def buy_cat(name)
    cat = Cat.new(name) #new instance of cat method
    cat.owner = self #should link to cat
    @cats << cat 
  end

  def buy_dog(name)
    dog = Dog.new(name)
    dog.owner = self
    @dogs << dog 
  end

  def walk_dogs
    new_array = []
    dogs.each do |i| 
      i.mood = 'happy'
        new_array << i  
    end
    @dogs = new_array
    @dogs

  end

  def feed_cats
    cats.map do |i| 
      i.mood = 'happy' 
    end
    @cats
  end

  def sell_pets
    #new_dog_array = []
    dogs.map do |i| 
      i.mood = 'nervous' 
      i.owner = nil
    end
    @dogs = []
    cats.map! do |i| 
      i.mood = 'nervous' 
      i.owner = nil
    end
    @cats = []
    @@all_owner = []
  end

  def list_pets()

    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
  #   result = []
  #   dogs.each {|i| result << i }
  #   cats.each{|i| result << i }
  #   #@pets.each {|i| result << i }
  #   result
  # end



end