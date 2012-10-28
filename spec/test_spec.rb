describe 'Results' do

  it 'has a pending block test'

  it 'has a pending nested test' do
    pending 'Reason test pending'
  end

  it 'has a test that fails' do
    true.should == false
  end

  it 'has a test that passes' do
    true.should_not == false
  end

  
  context 'has a context with' do

    it 'an in context failing test' do
      true.should == false
    end

    it 'an in context passing test' do
      true.should == true
    end

    it 'an in context pending test' do
      pending 'Reason in context test pending'
    end

    xit 'a disabled test' do
      true.should == false
    end

    it 'a test on line 36' do
      #
      # that a developer is running standalone with:
      #  
      #  rspec spec/test_spec.rb:36 --color
      #
      true.should == false
    end

  end

end
