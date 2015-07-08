require 'rake'
require 'fileutils'

task :install do
  puts
  puts "======================================================"
  puts "Welcome to YADR Custom Installation."
  puts "======================================================"
  puts

  Rake::Task["install_docker_and_docker_machine"].execute

  Rake::Task["install_slate"].execute
end

task :default => 'install'

task :install_docker_and_docker_machine do
  install_docker_and_docker_machine
end

task :install_slate do
  install_slate
end

private
def run(cmd)
  puts "[Running] #{cmd}"
  `#{cmd}` unless ENV['DEBUG']
end

def install_docker_and_docker_machine
  puts "======================================================"
  puts "Installing Docker and Docker Machine"
  puts ""
  puts "======================================================"

  run %{brew install docker docker-machine}
end

def install_slate
  puts "======================================================"
  puts "Installing Slate"
  puts ""
  puts "======================================================"

  run %{cd /Applications && curl http://www.ninjamonkeysoftware.com/slate/versions/slate-latest.tar.gz | tar -xz}
end
