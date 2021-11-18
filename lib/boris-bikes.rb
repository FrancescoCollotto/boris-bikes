require_relative './bike.rb'

class DockingStation
  
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20
  
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise "Sorry no bikes available" if empty?
    @bikes.each_with_index do |bike, i|
      if !bike.broken
        return @bikes.delete_at(i)
      end
    end
  end

  def return_bike(bike)
    raise "Dockingstation is full" if full?
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