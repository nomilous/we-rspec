module We

  module RSpec

    class Link < ::We::Link

      class_eval do

        #
        # override linker to this: We::RSpec::Link
        #

        We::defined[:link] = self

      end

      def traverse

        require "#{data[:_tag]}_spec.rb"

      end

    end

  end

end
