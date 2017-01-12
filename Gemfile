source 'https://rubygems.org'

ruby '2.4.0'
#ruby-gemset=tryrom

rails_version = '5.0.1'
%w(railties actionview actionpack).each do |name|
  gem name, rails_version
end

gem 'pg'
gem 'rom', git: 'git@github.com:rom-rb/rom.git'
gem 'rom-rails', git: 'git@github.com:rom-rb/rom-rails.git'
gem 'rom-repository', git: 'git@github.com:rom-rb/rom-repository.git'
gem 'rom-sql', git: 'git@github.com:rom-rb/rom-sql.git'
gem 'rom-http', git: 'git@github.com:rom-rb/rom-http.git'
gem 'puma', '~> 3.0'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'webmock'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-rails'
end
