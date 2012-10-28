module We

  module RSpec

    class Component < We::Node

      class_eval do

        We::defined[:component] = self

      end

      def inject( args )

        super

        #
        # metadata injector 
        # 
        # (at node creation)
        #

        #
        # Initialize storage for test results
        #

        data[:results] = {}

      end

    end

  end

end


We::action! component: lambda { puts "...lambda" } do
              
  puts "...block"
  puts "go to bed you fool!"
  gets sleep

end
