namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(username: "dm103",
                         email: "dmce103@gmail.com",
                         password: "dm103_tsk",
                         password_confirmation: "dm103_tsk",
                         admin: true)
    end
 end
