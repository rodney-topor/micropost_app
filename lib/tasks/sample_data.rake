namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example admin user",
                 email: "admin@railstutorial.org",
                 password: "admin1",
                 password_confirmation: "admin1",
                 admin: true)
              
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end