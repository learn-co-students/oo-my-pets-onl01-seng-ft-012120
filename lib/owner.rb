class Owner
  # code goes here
  @@all = []
  
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
  end


  def say_species
    'I am a human.'
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

  def cats 
    Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(name)
    # new_cat = Cat.all.find do |cat| cat.name == name}
    # if new_cat.nil?
    #   new_cat = Cat.new(name, self)
    # end
    # new_cat.owner = self
    # new_cat.mood = 'nervous'
    #Fail Test because order of the cats doesn't match.
    Cat.new(name, self)

  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each{|dog| dog.mood = 'happy'}
  end

  def feed_cats
    self.cats.each{|cat| cat.mood = 'happy'}
  end

  def sell_pets#(new_owner, pet_name)
    #new_owner.buy_pet(pet_name)
    self.cats.each do |cat| 
      cat.mood = 'nervous' 
      cat.owner = nil
    end
    self.dogs.each do |dog|
       dog.mood = 'nervous'
       dog.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end