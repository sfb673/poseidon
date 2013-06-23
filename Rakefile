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

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "poseidon"
  gem.homepage = "https://github.com/sfb673/poseidon"
  gem.license = "LGPL"
  gem.summary = %Q{POSEIdON is a Ruby gem that "Pimps Objects with SEmantic InformatiON", RDF style, suitable for building ontologies.}
  gem.description = %Q{POSEIdON is a Ruby gem that "Pimps Objects with SEmantic InformatiON", RDF style, suitable for building ontologies.}
  gem.email = "pmenke@googlemail.com"
  gem.authors = ["Peter Menke"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:features)

task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new
