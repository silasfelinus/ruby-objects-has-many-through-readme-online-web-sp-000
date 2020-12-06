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
    new_meal = Meal.new(customer, self, total, tip)
    @meals << new_meal
    @customers << customer
    if tip > best_tip
      best_tip = tip
      best_tipper = customer
    end
    new_meal
  end

  def meals
    @meals
  end

  def best_tipper
    @best_tipper
  end


end
