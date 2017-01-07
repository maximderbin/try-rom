source 'https://rubygems.org'

ruby '2.4.0'
#ruby-gemset=better_feedback

rails_version = '5.0.1'
%w(railties actionview actionpack).each do |name|
  gem name, rails_version
end

gem 'rom-rails'
gem 'rom-repository'
gem 'rom-http'
gem 'puma', '~> 3.0'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'webmock'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-rails'
end
