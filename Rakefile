desc "Run all specs in spec directory"
task :default do
  options = "--colour --format progress --loadby --reverse"
  files = FileList['spec/**/*_spec.rb']
  system("spec #{options} #{files}")
end

begin
  project = 'validates_exclusion_of_html'
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = project
    gem.summary = "ActiveRecord: Simple filtering for html as validation."
    gem.email = "grosser.michael@gmail.com"
    gem.homepage = "http://github.com/grosser/#{project}"
    gem.authors = ["Michael Grosser"]
  end
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end