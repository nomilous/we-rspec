require 'we'
require 'we-rspec/formatter'
require 'we-rspec/link'
require 'we-rspec/nodes'

module We

  module Event

    def self.end

    #
    # override end to show tree
    #

      ap We::tree

    end

  end

end


#
# Assign We::RSpec::Formatter to 
# receive inline test results
#

RSpec::configure do |config|

  config.add_formatter We::RSpec::Formatter

end
