module We

  module RSpec

    module NodeContext

      class << self

        def file_path( path = nil )

          @file_path = path if path
          @file_path 

        end

      end

    end

    module Node

      class Test < We::Node

        self.class_eval do
          
          We::defined[:rspec_test] = self
          
        end

      end

      class Context < We::Node

        self.class_eval do
          
          We::defined[:rspec_context] = self
          
        end

        def inject( args )

          super

          if args[:_file_path] != We::RSpec::NodeContext::file_path

            We::RSpec::NodeContext::file_path args[:_file_path]

            # 
            # new spec file becomes :fragment
            #

            @data[:_type] = :fragment

          end

        end

      end

      class Implement < Context

        self.class_eval do
          
          We::defined[:implement] = self
          
        end

        def inject( args )

          super

          @data[:_type] = :document
          @data[:_class] = :master
          @data[:_phase] = :implement

        end

      end

    end

  end

end
