source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
# # Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem "thin" #use Thin web server

gem "rspec-rails"
gem "bootstrap-sass"
#gem 'sass-rails'  #already included, see above
gem "simple_form"
gem "quiet_assets"
gem 'bootstrap-slider-rails'

gem "cancancan"   # for user authorization
gem "cocoon" # for nested attributes
gem "aasm" # for Finite State Machine 

gem "geocoder" #for using Geocoding
gem "gmaps4rails" #for use with Google Map
gem "underscore-rails" # JS library "underscore" for Rails


gem "draper" #Decorator pattern object extension
gem "virtus" #Service objects

gem "devise" #Devise for user authentication
gem "activeadmin", github: "activeadmin" #active Admin. 
gem "omniauth-facebook" #Omniauth with Facebook
gem "omniauth-twitter" #Omniauth with Twitter as a provider
gem "omniauth-google-oauth2" #omniauth with Google as a provider
gem "omniauth-github" #omniauth with Github as a provider
gem "koala" #facebook graph-API gem


group :test do  # for test coverage data and visual view
  gem "simplecov", require: false  # only load upon usage
end

group :development do  #these are required in ~/.irbrc 
  gem "interactive_editor"
  gem "awesome_print" #gives color coded, nested Rails Console output
  gem "hirb" #gives nice grided Rails Console printout
  gem "letter_opener" #to do with email client/mailer(?)
end

group :development, :test do
  gem "pry-rails" #??
  gem "better_errors" # shows more meaningful error messages
  gem "binding_of_caller" #works with "better_error" to give local variable inspection  

  gem 'capybara' #capybara for integration testing
  gem 'launchy'   #also for capybara testing 
  gem 'factory_girl_rails'  #this is for generate Rspec testing
  
  gem 'faker'
  gem 'rails-erd' #auto generate visual ERD diagram based on the models in current project
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'rails_12factor', group: :production
