require 'rake/testtask'
require 'rake/benchmark'

task :default => [:bubble_sort_test, :quick_sort_test, :merge_sort_test] do
    puts "testsorts done"
end

task :bubble_sort_test do 
  Rake::TestTask.new do |test|
    test.libs << "bubble_sort_test"
    test.pattern = "minitests/bubble_sort_test.rb"
  end
end

task :quick_sort_test do 
  Rake::TestTask.new do |test|
    test.libs << "quick_sort_test"
    test.pattern = "minitests/quick_sort_test.rb"
  end
end

task :merge_sort_test do 
  Rake::TestTask.new do |test|
    test.libs << "merge_sort_test"
    test.pattern = "minitests/merge_sort_test.rb"
  end
end
