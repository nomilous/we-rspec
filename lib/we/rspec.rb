require 'we'
require 'we-rspec/link'
require 'we-rspec/nodes'

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
