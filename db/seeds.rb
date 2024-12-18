# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Create a main sample user
User.create!(name: "James",
             email: "james@example.com",
             password: "test123",
             password_confirmation: "test123")

# Generate a bunch of additional users
99.times do |n|
  name = Faker::Name.name
  email = "user-#{n+1}@example.com"
  password = "test123"
  User.create!(name: name,
                email: email,
                password: password,
                password_confirmation: password)
  end
