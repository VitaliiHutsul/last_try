source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

gem 'mongoid', '~> 6.0.0.rc0'

# rails admin
# gem 'remotipart', github: 'mshibuya/remotipart'
gem 'rails_admin', '~> 1.1'
gem 'ckeditor'
gem 'rails_admin-i18n'
gem 'rails_admin_mongoid_localize_field', '~> 0.1.2'
gem 'kaminari-mongoid'

gem "non-stupid-digest-assets"

gem 'carrierwave-mongoid', require: 'carrierwave/mongoid'
gem 'i18n_backend_mongoid', github: 'webmil/i18n_backend_mongoid'
gem 'mini_magick'
gem 'sorcery', '0.9.1'

gem 'haml-rails'
gem 'bower-rails'
gem 'simple-navigation'
gem 'simple_form'
gem 'autoprefixer-rails'
gem 'gretel'

gem 'rails-i18n', '~> 5.0.0' # For 5.0.x
gem 'capistrano', '~> 3.7', '>= 3.7.1'
gem 'capistrano-rails', '~> 1.2'
gem 'capistrano-passenger', '~> 0.2.0'
gem 'typhoeus'


# Add this if you're using rbenv
gem 'capistrano-rbenv', '~> 2.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
