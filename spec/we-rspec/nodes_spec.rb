describe We::RSpec::Test do

  it 'is an rspec pending test node'

  it 'is an rspec passing test node' do
    true.should == true
  end

  it 'is an rspec failing test node' do
    true.should == false
  end

end

