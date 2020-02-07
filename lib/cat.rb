require 'pry'

class Cat

    attr_accessor :mood, :owner, :all
    attr_reader :name
    @@all = []

  def initialize(cat_name,cat_owner)
    @name = cat_name
    @mood = "nervous"
    @owner = cat_owner
    @@all << self
  end

  def self.all
    @@all
  end

end