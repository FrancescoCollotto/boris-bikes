require_relative './bike.rb'

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20
  def initialize
    @bikes = []
  end

  def release_bike
    raise "Sorry no bikes available" if empty?
    @bikes.pop 
  end

  def return_bike(bike)
    raise "Dockingstation is full" if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end