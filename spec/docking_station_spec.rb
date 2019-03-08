require 'docking_station'

describe DockingStation do
  it 'creates new DockingStation' do
    #expect(DockingStation.new.is_a? DockingStation).to eq true
    expect(DockingStation.new).to be_a DockingStation
  end

end

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
end

describe DockingStation do
  it 'gets a working bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.working?).to eq true
  end
end

describe DockingStation do
  it { is_expected.to respond_to(:dock).with(1).argument }
end

describe DockingStation do
  it { is_expected.to respond_to(:bike) }
end

describe DockingStation do
  it 'docks a bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.dock(bike)).to eq bike
  end
end

describe DockingStation do
  it 'returns docked bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.bike).to eq bike
  end
end

describe DockingStation do
  it 'gives no bikes available error message' do
    docking_station = DockingStation.new
    expect {docking_station.release_bike}.to raise_error "No more bikes available"
  end
end