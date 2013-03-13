source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

group :development do
	gem "rspec-rails", "~> 2.12.2"
	gem 'capistrano-deploy', '~> 0.1.1', :require => nil
	gem "rvm-capistrano", "~> 1.2.7"
end

group :production do
  gem 'unicorn', '~> 3.6.2', :require => nil
end

group :test do
	gem "rspec", "~> 2.12.0"
	gem "webrat", "~> 0.7.3"
	gem "ZenTest", '4.4.1', :git => 'git://github.com/seattlerb/zentest.git'
	gem "test-unit", "~> 2.5.4"
	gem "autotest", "~> 4.4.6"
	gem "autotest-rails-pure", "~> 4.1.2"
	gem "autotest-notification", "~> 2.3.4"
	gem "autotest-growl", "~> 0.2.16"
	gem "autotest-fsevent", "~> 0.2.8"
	gem "spork", "~> 0.9.2"

end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  	gem 'sass-rails',   '~> 3.2.3'
  	gem 'coffee-rails', '~> 3.2.1'
  	gem "compass", :git => 'git://github.com/chriseppstein/compass.git'
	gem "compass-rails", "~> 1.0.3"
	gem 'haml-rails'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
  	gem 'uglifier', '>= 1.0.3'
  	gem "paperclip"
  end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
