namespace :db do
  desc 'Load the seed data from db/seeds.rb'
  task :seed => :environment do
    eval(File.read(Rails.root.join('db/seeds.rb')))
  end
end
