module We

  module RSpec

    class Formatter

      def initialize( output ); end

      def start( test_count )
      end

      def example_group_started( example_group )
        We::push :rspec_context => example_group.description,
                 :_file_path => example_group.file_path
      end

      def example_group_finished( example_group )
        We::pop
      end

      def example_started( example )
      end

      def example_pending( example )
        we :rspec_test => example.description, 
           :state => :pending,
           :done => false
      end

      def example_failed( example )
        we :rspec_test => example.description, 
           :state => :failed,
           :done => false
      end

      def example_passed( example )
        we :rspec_test => example.description, 
           :state => :passed,
           :done => true
      end

      def message( message )
      end

      def stop
      end

      def start_dump
      end

      def dump_pending
      end

      def dump_failures
      end

      def dump_summary( duration, example_count, failure_count, pending_count )
      end

      def close
      end

    end

  end

end
