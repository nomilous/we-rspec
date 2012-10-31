module We

  module RSpec

    class Test < We::Node

      self.class_eval do
        
        We::defined[:rspec_test] = self
        
      end

    end

  end

end

