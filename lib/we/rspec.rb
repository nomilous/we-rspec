require 'we'
require 'we-rspec/formatter'
require 'we-rspec/link'

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
