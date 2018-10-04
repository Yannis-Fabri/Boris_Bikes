require 'dockingstation'

describe DockingStation do
  
  it { is_expected.to respond_to :release_bike }
  
  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike)
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end
  
  it { is_expected.to respond_to(:dock).with(1).argument }
  
  it { is_expected.to respond_to(:bike) }
  
  it 'It can dock a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
  
  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
  
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end 
  end
  
  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes found'
    end
  end
  
  describe '#dock' do
    it 'raises an error when full' do
      subject.dock(Bike.new)
      expect { subject.dock Bike.new }.to raise_error 'Docking station is full'
    end
  end
end
