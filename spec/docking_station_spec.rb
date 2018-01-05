require 'docking_station'

describe DockingStation do
  subject(:station) {DockingStation.new}

  describe '#initialize' do
    it 'sets a capacity' do
      station = DockingStation.new(40)
      expect(station.capacity).to eq 40
    end
    it 'defaults to DEFAULT_CAPACITY if no capacity argument given' do
      expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

  it {is_expected.to respond_to(:release_bike)}
  describe '#release_bike' do

    let(:bike) { double :bike }
    # allow(bike).to receive(:working?).and_return(true)
    it 'releases a bike' do
      allow(bike).to receive(:working?).and_return(true)
      station.dock(bike)
      expect(station.release_bike).to eq bike
    end
    it 'releases working bike' do
      allow(bike).to receive(:working?).and_return(true)
      station.dock(bike)
      bike = station.release_bike
      expect(bike).to be_working
    end
    it 'will not release a bike if none available' do
      expect {station.release_bike}.to raise_error "No bikes available"
    end
    it 'will not release a broken bike' do
      allow(bike).to receive(:working?).and_return(false)
      station.dock(bike)
      expect {station.release_bike}.to raise_error "No working bike available"
    end
    it 'removes a bike from a docking station' do
      allow(bike).to receive(:working?).and_return(true)
      station.dock(bike)
      station.release_bike
      expect(station.bikes).to be_empty
    end
  end

  it {is_expected.to respond_to(:dock).with(1).argument}
    describe '#dock'do
      it 'docks bike' do
        bike = double(:bike)
        station.dock(bike)
        expect(station.bikes).to eq [bike]
      end

    it 'will not dock a bike if station is full' do
      subject.capacity.times { station.dock double(:bike) }
      expect {station.dock double(:bike)}.to raise_error "Station is full"
    end
  end
 end
