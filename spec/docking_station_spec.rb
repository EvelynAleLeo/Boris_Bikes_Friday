require 'docking_station'

describe DockingStation do
  it 'creates new DockingStation' do
    expect(DockingStation.new.is_a? DockingStation).to eq true
  end

end

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
end

describe DockingStation do
  it 'gets a working bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.working?).to eq true
  end
end
