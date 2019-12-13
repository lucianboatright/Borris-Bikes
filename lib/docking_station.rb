require_relative 'bike'


class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :capacity


  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "No space available" if full? 
    @bikes << bike
  end

  private

  attr_reader :bikes

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end 



# set @capacity as instance variable on DockingStation.new
# Create unit test for this
# set default capacity to 20 
# create unit test for default capacity 
# use default argument value within the initialize 


# create instance valriable @capacity 

# check @capacity is default 20

#


