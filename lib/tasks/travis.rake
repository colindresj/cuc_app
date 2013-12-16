require 'coveralls/rake/task'
Coveralls::RakeTask.new

desc "Run tests on Travis-CI"
task travis: [:spec, :cucumber, 'coveralls:push']
