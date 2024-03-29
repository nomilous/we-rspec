describe We::RSpec::Node do

  it 'root of a spec file becomes :fragment, :rspec_context and has file path' do

      We::node.data[:_type].should == :fragment
      We::node.data[:_class].should == :rspec_context
      We::node.data[:_file_path].should == "./spec/we-rspec/nodes_spec.rb"

  end

  context 'Test node' do

    #
    # tricky to test because the node is created
    # after the test
    #

    it 'knows of pending'

    it 'knows of test' do; end

    xit 'knows of disabled' do; end

    #
    # rspec --color --format doc -r config/rspec spec/we-rspec/nodes_spec.rb:29
    #
    it 'still nests contexts when run "rspec file:<line_num>"' do 

      # nice!!

    end

  end

  context 'Context node' do

    it 'root of a nested context becomes :node, :rspec_context' do

      We::node.data[:_type].should == :node
      We::node.data[:_class].should == :rspec_context

    end

  end

end
