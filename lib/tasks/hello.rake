require 'rake'
namespace :db do
  desc "Create user data"
  task :create_user => :environment do
    to_insert = []

    10000.times do |i|
        to_insert.push({name: "fake name " + i.to_s, email: "fake_email_" + i.to_s + "@gmail.com", created_at: Time.now, updated_at: Time.now})
    end

    User.insert_all(to_insert)
  end
end
