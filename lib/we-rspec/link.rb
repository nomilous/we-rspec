module We

  module RSpec

    class Link < We::Node

      class_eval do

        We::defined[:link] = self

      end

      def inject( args )

        super

        #
        # walk over the fragment edge
        #

        enter if (

          We::enabled? :walking and 
          We::enabled? :linking

        )

      end

    end

  end

end
