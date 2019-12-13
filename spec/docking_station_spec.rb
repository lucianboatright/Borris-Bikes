require 'docking_station'

describe DockingStation do 

  
  it { is_expected.to respond_to :release_bike }
  

  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike)
    bike = subject.release_bike
    expect(bike).to be_working
  end 

  it { is_expected.to respond_to :dock }
  it { is_expected.to respond_to(:dock).with(1).argument } 

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end 

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.dock(@bikes)).not_to be_empty
  end 

  describe "Initializtion" do
    subject {DockingStation.new}
    let(:bike) {Bike.new}
    it 'default capacity' do
      DockingStation::DEFAULT_CAPACITY.times do
          subject.dock(bike)
        end
        expect{subject.dock(bike)}.to raise_error "No space available"
      end
    end



  #   it "has a variable capacity" do
  #     bike = Bike.new
  #     docking_station = DockingStation.new(50)
  #     50.times {docking_station.dock(bike)}
  #     expect {docking_station.dock(bike) }.to raise_error 'No space available'
  #   end
  # end

  describe 'release_bike' do
    it 'release a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
  
  describe '#release_bike' do
    it 'raised an error when there are no bikes available' do
      expect{ subject.release_bike }.to raise_error "No bikes available"
    end
  end 

  describe '#dock' do
    it "raised an error when full" do
      subject.capacity.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error "No space available"
    end
  end



    # describe "#full?" do
    #   it "is dock true(full) or false (emplty)" do
    #     expect(DockingStation.send(full?)).to eq(false)
    #   end
    # end     
    # describe "#empty?" do
    #   it "test is dock is empty?" do
    #     expect(DockingStation.send(empty?)).to eq(true)
    #   end
    # end






end 





















