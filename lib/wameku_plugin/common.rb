module WamekuPlugin
  module Common

    # run called by client
    #
    # @param  [nil]
    # @return [Hash] hash of plugin instance methods called
    def run
      results = {}
      load_methods.each do |meth|
        results[meth] = self.public_send(meth)
      end
      results
    end  

    private
    # get only plugin instance methods
    def load_methods
      self.class.instance_methods(false)
    end

  end
end
