require './day1.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
end

describe Working do
  it { is_expected.to return : }
end


describe Bike do
  it { is_expected.to respond_to :working? }
end 