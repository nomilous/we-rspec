require 'we'
require 'we-rspec/formatter'
require 'we-rspec/link'
require 'we-rspec/nodes'

#
# Assign We::RSpec::Formatter to 
# receive inline test results
#

RSpec::configure do |config|

  config.add_formatter We::RSpec::Formatter

end
