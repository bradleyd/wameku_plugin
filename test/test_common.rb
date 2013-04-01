require_relative 'test_helper'

describe WamekuPlugin do

  let(:sample_plugin) { 
    class Foo
      include WamekuPlugin::Common
      def foo
        "bar"
      end
    end
  }
  it "should repond to #run" do
    p @sample_plugin
    assert_respond_to @sample_plugin, :run
  end

end



