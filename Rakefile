require 'rake/testtask'

task default: 'test'

# Run all the minitest tests in that subdirectory

Rake::TestTask.new do |test|
  test.libs << "test"
  test.pattern = "minitests/*_test.rb"
  test.verbose = true
end
