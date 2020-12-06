class Meal
  attr_accessor :customer, :waiter, :total, :tip

  def initialize(customer, waiter, total, tip)
    @customer = customer
    @waiter = waiter
    @total = total
    @tip = tip
  end

end
