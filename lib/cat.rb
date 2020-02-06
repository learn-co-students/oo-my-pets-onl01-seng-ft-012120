require 'pry'
class Cat
    attr_accessor :mood, :owner
    attr_reader :name
    @@all_cats = []
  def initialize(cat_name,cat_owner)
    @name = cat_name
    @mood = "nervous"
    @owner = cat_owner
    @@all_cats << self
    binding.pry
  end
  def self.all
    @@all_cats
  end
end