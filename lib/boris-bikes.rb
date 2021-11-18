require 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise "Sorry no bikes available"
    else
      @bikes.pop
    end 
  end

  def return_bike(bike)
    if @bikes.count < 20
      @bikes << bike
    else 
      raise "Dockingstation is full"
    end
  end

end