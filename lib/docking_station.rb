class DockingStation
  require_relative 'bike'

  attr_reader :bikes
  attr_reader :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise("No bikes available") if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Station is full" if full?
    @bikes << bike
  end

  private

   def full?
     @bikes.count >= capacity
   end

   def empty?
     @bikes.empty?
   end

end
