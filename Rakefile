# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'rake/notes/rake_task'

require 'rspec/core'
require 'rspec/core/rake_task'


desc "Run RSpec code examples"
RSpec::Core::RakeTask.new do |spec|
  spec.rspec_opts = ["-c"]
  spec.pattern = FileList['spec/**/*_spec.rb']
end

namespace :morning do
  desc "Make coffee"
  task :coffee do
    puts "Making coffee..."
    puts "- Fill kettle"
    puts "- Switch kettle on"
    puts "- Wait until boiling"
    puts "- Switch kettle off"
    puts "- Open coffee jar"
    puts "- Fill spoon with coffee"
    puts "- Tip spoonful into cup"
    puts "- Close coffee jar"
    puts "Done"
  end
end

task :default => :spec
