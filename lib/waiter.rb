class Waiter
  attr_accessor :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
    @customers = []
    @meals = []
    @best_tip = 0
    @best_tipper = ""

  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip=0)
    Meal.new(customer, self, total, tip)
  end

  def meals
    Meal.all.select do |meal|
      meal.waiter == self #checking for waiter now
    end
  end

  def best_tipper
    @best_tipper
  end


end
