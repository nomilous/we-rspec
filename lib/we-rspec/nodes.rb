module We

  module RSpec

    class Component < We::Node

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


We::action! component: lambda {

              STDOUT << "\n\n...........action\n\n"

            }, 
            node_class: We::RSpec::Component do
              
              STDOUT << "\n\n...........action block\n\n"

            end

