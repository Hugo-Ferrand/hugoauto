# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require "date"

puts 'Cleaning db'

Booking.destroy_all
Car.destroy_all
User.destroy_all

puts 'Creating Users Cars and Bookings'

hugo = User.create(first_name: 'Hugo', last_name: 'Ferrand', email: 'hugo@email.com', password: 'azerty')
sarah = User.create(first_name: 'Sarah', last_name: 'Guillon', email: 'sarah@outlook.com', password: 'azerty')
christiane = User.create(first_name: 'christiane', last_name: 'Bugel', email: 'christiane@orange.fr', password: 'azerty')

puts 'Users well generated'

renault = Car.create(
  description: 'very good and brillant and amazing',
  price: 100,
  brand: 'Renault',
  street: 'Rue principale',
  city: 'Nantes',
  country: 'France',
  rating: 2,
  user: sarah
)

fiat = Car.create(
  description: 'very good ',
  price: 200,
  brand: 'Fiat',
  street: 'Rue de la rue',
  city: 'Marseille',
  country: 'France',
  rating: 3,
  user: hugo
)

audi = Car.create(
  description: 'too fast',
  price: 400,
  brand: 'Audi',
  street: 'Rue delaala',
  city: 'Bordeaux',
  country: 'France',
  rating: 4,
  user: christiane
)

puts 'Cars well generated'

Booking.create(
  start_date: Date.new(2022,01,05),
  end_date: Date.new(2022,01,10),
  comment: 'Does the car has air conditionningg?',
  total_price: 800,
  status: 'validated',
  user: christiane,
  car: renault
)

puts 'Bookings well generated'
