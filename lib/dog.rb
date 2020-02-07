require 'pry'
class Dog
    attr_accessor :mood, :owner, :all
    attr_reader :name
    @@all = []
  def initialize(dog_name,dog_owner)
    @name = dog_name
    @mood = "nervous"
    @owner = dog_owner
    @@all << self
  end
  def self.all
    @@all
  end
end