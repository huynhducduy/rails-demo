require 'rake'
namespace :db do
  desc "Create user data"
  task :create_user => :environment do
    10000.times do |i|
        User.create(name: "fake name " + i.to_s, email: "fake_email_" + i.to_s + "@gmail.com")
    end
  end
end
