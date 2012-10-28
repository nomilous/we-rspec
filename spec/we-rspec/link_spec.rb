describe 'We::Rspec::link' do

  it 'require the linked fragment' do

    we enable: :linking

    expect {

      We::RSpec::Link.new.inject( link: 'controllers/hydraulics' )

    }.to raise_error LoadError, 

    /file -- controllers\/hydraulics_spec.rb/

  end

end
