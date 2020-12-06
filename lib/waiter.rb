class Waiter
  attr_accessor :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
    @customers = []
    @meals = []
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip)
    new_meal = Meal.new(customer, self, total, tip)
    @meals << new_meal
    @customers << customer
    new_meal
  end


end
