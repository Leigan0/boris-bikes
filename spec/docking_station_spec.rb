require 'docking_station'

describe DockingStation do
  subject(:station) {DockingStation.new}

  describe '#initialize' do
    it 'sets a capacity' do
      station = DockingStation.new(40)
      expect(station.capacity).to eq 40
    end
    it 'defaults to DEFAULT_CAPACITY if no capacity argument given' do
      docking_station = DockingStation.new
      expect(docking_station.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

  it {is_expected.to respond_to(:release_bike)}
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      station.dock(bike)
      expect(station.release_bike).to eq bike
    end
    it 'releases working bike' do
      bike = Bike.new
      station.dock(bike)
      bike = station.release_bike
      expect(bike).to be_working
    end
    it 'will not release a bike if none available' do
      expect {station.release_bike}.to raise_error "No bikes available"
    end
  end

  it {is_expected.to respond_to(:dock).with(1).argument}
  describe '#dock'do
    it 'docks bike' do
      bike = Bike.new
      station.dock(bike)
      expect(station.bikes).to eq [bike]
    end

    it 'will not dock a bike if station is full' do
      subject.capacity.times { station.dock Bike.new }
      expect {station.dock(Bike.new)}.to raise_error "Station is full"
    end
  end
 end
