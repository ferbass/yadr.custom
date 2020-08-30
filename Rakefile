require 'rake'
require 'fileutils'

task :install do
  puts
  puts "======================================================"
  puts "Welcome to YADR Custom Installation."
  puts "======================================================"
  puts
end

task :default => 'install'

private
def run(cmd)
  puts "[Running] #{cmd}"
  `#{cmd}` unless ENV['DEBUG']
end
