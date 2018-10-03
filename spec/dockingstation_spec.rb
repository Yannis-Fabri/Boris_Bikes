require 'dockingstation'

describe DockingStation do
  
  it { is_expected.to respond_to :release_bike }
  
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  
  it 'It can dock a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
  
  it 'return a docked bike' do
    bike = Bike.new
    subject.(bike)
    expect(subject.release_bike).to eq bike
  end
  
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end 
  end
end
