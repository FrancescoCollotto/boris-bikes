require "boris-bikes"

describe DockingStation do
    it "has default capacity" do
        expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end
    it "has variable capacity" do
        dock = DockingStation.new(50)
        bike = Bike.new
        dock.capacity.times { dock.return_bike Bike.new}
        expect {dock.return_bike(bike) }.to raise_error("Dockingstation is full")
    end
    
    it { expect(DockingStation).to respond_to(:new).with(1).argument }
    it { expect(subject).to respond_to(:release_bike) }
    it { expect(subject).to respond_to(:return_bike).with(1).argument }
    it "return a bike to DockingStation" do
        bike = Bike.new
        expect(subject.return_bike(bike)).to be_an_instance_of Array
    end
    
    describe "#release_bike" do
        it "raises an error if there are no bikes" do
            expect { subject.release_bike }.to raise_error("Sorry no bikes available")
        end
        it "release a bike" do
            bike = Bike.new
            docking_station = DockingStation.new
            docking_station.return_bike(bike)
            expect(docking_station.release_bike).to be_an_instance_of Bike
        end
    end

    describe "#return_bike" do
        it "raises an error if DockingStation is full" do
            bike = Bike.new
            dock = DockingStation.new
            dock.capacity.times { dock.return_bike Bike.new }
            expect { dock.return_bike(bike) }.to raise_error("Dockingstation is full")
        end
        it "add a bike if there is no bikes" do
            bike = Bike.new
            expect(subject.return_bike(bike)).to be_an_instance_of Array
        end
    end
end
# it { expect(subject.release_bike).to be_an_instance_of(Bike)}