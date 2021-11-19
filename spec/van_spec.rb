require 'vans'
require 'bike'

describe Vans do
    it 'respond to collect_bikes' do
        expect(Vans.new).to respond_to :collect_bikes
    end

    it 'should push broken bikes into the array' do
        van = Vans.new
        bike = Bike.new
        station = DockingStation.new
        bike.report_broken
        station.return_bike(bike)
        expect(van.collect_bikes(station.bikes)).not_to be_empty
    end
end
