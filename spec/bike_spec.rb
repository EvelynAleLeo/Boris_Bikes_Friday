require 'bike'

describe Bike do
  it 'creates new Bike' do
    expect(Bike.new.is_a? Bike).to eq true
  end
end

describe Bike do
  it 'is working?' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end
  #it {is_expected.to respond_to(:working?)}
end
