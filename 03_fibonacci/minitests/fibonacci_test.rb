require 'minitest/autorun'
require 'minitest/spec'

require 'fibonacci'

describe "test" do
  it "test" do
  	f = fibonacci(2)
    assert f == 3
  end
end
