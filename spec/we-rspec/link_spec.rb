describe 'We::Rspec::link' do

  it 'require the linked fragment' do

    we enable: :linking

    expect do

      We::RSpec::Link.new.inject( link: 'controllers/hydraulics' )

    end.to raise_error LoadError, 

    /file -- controllers\/hydraulics_spec.rb/

  end

end
