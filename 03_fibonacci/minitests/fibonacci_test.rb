require 'minitest/autorun'
require 'minitest/spec'

require 'fibonacci'

# 1 1 2 3 5 ...
describe "test" do
  it "test" do
  	#assert fibonacci(1) == 1, "1"
    #assert fibonacci(2) == 1, "2: "
    #assert fibonacci(14) == 377 , "14"
    #assert fibonacci(25) == 75025 , "25"
    #assert fibonacci(40) == 102334155 , "40"

    assert fib(100) == 354224848179261915075, "100"
  end
end
