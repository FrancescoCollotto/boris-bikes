require_relative './boris-bikes.rb'


class Vans
    attr_reader :broken_bikes
    def initialize
        @broken_bikes = []
    end

    def collect_bikes(bikes)
        bikes.each do |bike|
            if bike.broken
                @broken_bikes << bike   
            end
        end
    end
end

class Garage

end