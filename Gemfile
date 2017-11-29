source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end



gem 'rails', '~> 5.1.0'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'devise'
gem 'faker'
gem 'rails_admin'
gem 'cancan'
gem 'activeresource'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'carrierwave'
gem 'mini_magick'
gem 'pusher'
gem 'fog'
gem 'dotenv-rails'
gem 'unicorn'
gem 'twitter-bootstrap-rails'
gem'data-confirm-modal'
gem 'therubyracer' , platforms: :ruby
gem 'less-rails'
gem 'font-awesome-rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13.0'
  gem 'selenium-webdriver'
  gem "database_cleaner"
  gem "launchy"
  gem 'capistrano', '3.6.0'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-unicorn'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'letter_opener_web'

end



gem 'tzinfo-data'
