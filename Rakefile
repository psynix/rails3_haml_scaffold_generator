require 'rubygems'
require 'rake'
require 'lib/version'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "haml_rails"
    gem.summary = %Q{HAML scaffold template engine}
    gem.description = %Q{HAML scaffold template engine}
    gem.email = "felix.rafael@gmail.com"
    gem.homepage = "http://github.com/fellix/haml_rails"
    gem.authors = ["Rafael Felix"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
    gem.version = HamlRails::Version::STRING
    gem.files =  FileList["[A-Z]*(.rdoc)", "{generators,lib}/**/*", "init.rb"]
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "haml_rails #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
