# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.find_by("email = 'admin@omela.com'")

  # user = User.new
  # user.username = "Admin"
  # user.email = 'admin@omela.com'
  # user.owner = true
  # user.password = 't4586E557Ch'
  # user.password_confirmation = 't4586E557Ch'
  # user.save!

  user.username = "Admin"
