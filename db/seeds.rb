# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([
  { first_name: "Admin", last_name: "Super", nick_name: "Admin", address: "Pusat Kantor", phone: 8129090, email: "admin@mail.com", password: "admin", password_confirmation: "admin", birth_date: DateTime.parse("01/01/1991") },
  { first_name: "Pimpinan", last_name: "Manager", nick_name: "Manager", address: "New York", phone: 000, email: "manager@mail.com", password: "manager", password_confirmation: "manager", birth_date: DateTime.parse("02/02/1992") },
])