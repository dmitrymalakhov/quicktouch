#$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require "rvm/capistrano"                  # Load RVM's capistrano plugin.
require "bundler/capistrano"

set :rvm_ruby_string, 'ruby-1.9.3-p374@quicktouch'  # Or whatever env you want it to run in.

require 'capistrano-deploy'
use_recipes :git, :rails, :bundle, :unicorn

server '92.53.127.25', :web, :app, :db, :primary => true
set :user, 'quicktouch'
set :deploy_to, '/home/quicktouch/web-app'
set :repository, 'https://github.com/dmitrymalakhov/quicktouch.git'  #'git@github.com:dmitrymalakhov/quicktouch.git'

ssh_options[:forward_agent] = true
default_run_options[:pty] = true

after 'deploy:update',  'bundle:install'
after 'deploy:restart', 'unicorn:stop'