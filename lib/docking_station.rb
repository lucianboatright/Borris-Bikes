require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "No space available" if full? 
    @bikes << bike
  end

  def full?
    @bikes.count >= 20 
  end

end 


# single resposiblility principle 
# predicat method .full?.////

# rewrite guard condition to include .full?
# predicate method .empty?
# rewite guard metods to include .empty?
# private methods