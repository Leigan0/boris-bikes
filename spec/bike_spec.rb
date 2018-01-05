require 'bike'

describe Bike do
  it 'responds to working?' do
    bike = Bike.new
    expect(bike).to respond_to :working?
  end
  it 'reports that a bike is broken' do
    bike = Bike.new
    bike.broken
    expect(bike.working?).to eq false
  end
end
