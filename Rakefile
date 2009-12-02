$: << "./lib"

require 'rake'
require 'rake/clean'
require 'spec/rake/spectask'
require 'cucumber/rake/task'

task :default => :cucumber

Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = "--format progress --language ja"
end

Spec::Rake::SpecTask.new do |t|
  t.spec_opts = ["--color"]
end

