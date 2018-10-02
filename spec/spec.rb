require './day1.rb'

Describe DockingStation do
    it 'release_bike' do
        expect(subject).to respond_to(:release_bike)
    end
end
