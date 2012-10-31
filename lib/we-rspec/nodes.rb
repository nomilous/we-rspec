module We

  module RSpec

    class Test < We::Node

      self.class_eval do
        
        We::defined[:rspec_test] = self
        
      end

    end

    class Context < We::Node

      self.class_eval do
        
        We::defined[:rspec_context] = self
        
      end

    end

  end

end

