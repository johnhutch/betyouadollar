# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
if Rails.env.production?
  # create initial admin account who will then create other admin accounts who will then remove
  # the initial admin account
  User.create!(
    email: "admin@deleteme.com",
    password: "password2*",
    name: "Initial Admin",
#    role: :administrator
  )
end

if Rails.env.development? || Rails.env.test?
  User.create!(
    email: "johnhutch@gmail.com",
    password: "password2*",
  )
  User.create!(
    email: "santini@test.com",
    password: "password2*",
  )
  User.create!(
    email: "jake@test.com",
    password: "password2*",
  )

  10.times do
    owner = User.all.sample
    better = User.all.sample
    sport = Faker::Sport.unusual_sport
    score = 1 + rand(100)
    expiration = Faker::Time.between(from: DatimeTime.now + 1, to: DateTime.now + 14)
    Bet.create!(
      owner: owner,
      better: better,
      description: "my favorite " + sport + " team will beat your favorite " + sport + " team by " + score,
      settled: false, 
      expiration: expiration
    )
  end
end
