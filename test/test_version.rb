require_relative 'test_helper'

describe WamekuPlugin do

  it "must be defined" do
    WamekuPlugin::VERSION.wont_be_nil
  end

end
