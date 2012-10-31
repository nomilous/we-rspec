require 'we'
require 'we-rspec/formatter'
require 'we-rspec/link'

#
# override end to show tree
#

module We

  module Event

    def self.end

      ap We::tree

    end

  end

end
