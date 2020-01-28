class Cat
attr_accessor :mood, :owner #can change, :owner links to owner
attr_reader :name #, :owner
@@all = []
  def initialize (name, owner=nil)
    @owner = owner
    @name = name 
    @mood = 'nervous'
    @@all << self

  end

  def self.all
    @@all
  end

end