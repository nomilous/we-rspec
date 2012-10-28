module We

  module RSpec

    class Link < We::Fragment

      class_eval do

        We::defined[:link] = self

      end

      def inject( args )

        super

        data[:additional_metadata] = :more

      end

    end

  end

end
