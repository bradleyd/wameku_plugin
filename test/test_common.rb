require_relative 'test_helper'

describe WamekuPlugin do

  before  do
   class Foo 
     include WamekuPlugin::Common
     def baz
       "green"
     end
   end
   @sample_plugin = Foo.new
  end

  it "should repond to #run" do
    assert_respond_to @sample_plugin, :run
  end

  it "should respond to #baz" do
    assert_respond_to @sample_plugin, :baz
  end

  it "should load plugin's instance methods" do
    assert_equal @sample_plugin.run, {baz: "green"}
  end

end



