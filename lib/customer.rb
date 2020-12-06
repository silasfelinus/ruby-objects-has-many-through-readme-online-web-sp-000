class Customer
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
    @@all = []
    @@all << self
  end

  def self.all
    @@all
  end
    
  
end