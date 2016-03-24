require 'rubocop/rake_task'
require 'foodcritic'
require 'rspec/core/rake_task'

FoodCritic::Rake::LintTask.new

RSpec::Core::RakeTask.new

desc 'Run Foodcritic style checks'
task style: [:foodcritic]

desc 'Run all style checks and unit tests'
task test: [:style, :spec]

task :upload_to_chef do
  sh 'berks install; berks upload'
end

task default: ['test']
task ci: ['style', 'upload_to_chef']
task cloud: ['test', 'integration:amazon', 'upload_to_chef']