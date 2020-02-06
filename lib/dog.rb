require 'pry'
class Dog
    attr_accessor :mood, :owner
    attr_reader :name
    @@all_dogs = []
  def initialize(dog_name,dog_owner)
    @name = dog_name
    @mood = "nervous"
    @owner = dog_owner
    @@all_dogs << self
  end
  def self.all
    @@all_dogs
  end
end