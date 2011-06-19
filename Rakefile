require 'rubygems'
gem 'hoe', '>= 2.1.0'
require 'hoe'
require 'fileutils'
require './lib/task_list_parser'

Hoe.plugin :newgem
# Hoe.plugin :website
# Hoe.plugin :cucumberfeatures

# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
$hoe = Hoe.spec 'task_list_parser' do
  self.developer 'Alex Mekelburg', 'alex.mekelburg@gmail.com'
  self.name = "task_list_parser"
  self.summary = "Parses text-based project and task lists into objects that can be rendered in HTML or iCal"
  self.rubyforge_name       = self.name # TODO this is default value
  self.extra_deps = [['builder', '>= 2.1.2'], ['activesupport', '>=2.3.4']]
  # self.extra_deps         = [['activesupport','>= 2.0.2']]

end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }

# TODO - want other tests/tasks run by default? Add them to the list
# remove_task :default
# task :default => [:spec, :features]
