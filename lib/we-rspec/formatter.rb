module We

  module RSpec

    class Formatter

      def initialize( output ); end

      def start( test_count )
        We::push :fragment
      end

      def example_group_started( example_group )
      end

      def example_group_finished( example_group )
      end

      def example_started( example )
        We::push rspec_test: example.description
      end

      def example_pending( example )
        We::pop
      end

      def example_failed( example )
      end

      def example_passed( example )
        We::pop
      end

      def message( message )
      end

      def stop
        We::pop
      end

      def start_dump
      end

      def dump_pending
      end

      def dump_failures
      end

      def dump_summary( duration, example_count, failure_count, pending_count )

        ap "...dump_summary( #{duration}, #{example_count}, #{failure_count}, #{pending_count} )"
      
      end

      def close
        ap We::tree
      end

    end

  end

end
