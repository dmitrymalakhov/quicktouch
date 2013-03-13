$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require "rvm/capistrano"                  # Load RVM's capistrano plugin.
set :rvm_ruby_string, '1.9.3@quicktouch'        # Or whatever env you want it to run in.

require 'capistrano-deploy'
use_recipes :git, :rails, :bundle, :unicorn

server 'quicktouch.com', :web, :app, :db, :primary => true
set :user, 'quicktouch'
set :deploy_to, '/home/quicktouch/web-app'
set :repository, git@github.com:dmitrymalakhov/quicktouch.git

after 'deploy:update',  'bundle:install'
after 'deploy:restart', 'unicorn:stop'