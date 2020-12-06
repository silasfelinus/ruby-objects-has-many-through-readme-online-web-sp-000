class Customer
  attr_accessor :name, :age
  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
    @meals = []
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip)
    new_meal = Meal.new(self, waiter, total, tip)
    @meals << new_meal
    new_meal
  end

    def meals
      @meals
    end

end
