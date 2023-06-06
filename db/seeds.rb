# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning db"
Course.destroy_all
User.destroy_all
Review.destroy_all
Subscription.destroy_all

puts "Creating users"

user = User.new(
  email: "test3@gmail.com",
  password: "azerty",
  age: 25,
  last_name: "Sgw",
  first_name: "Laurie",
  phone_number: "0690909090",
  level: "Débutant",
  health_record: "/"
)
user.save!

user = User.new(
  email: "test4@gmail.com",
  password: "azerty",
  age: 25,
  last_name: "S",
  first_name: "Lau",
  phone_number: "0690909090",
  level: "Débutant",
  health_record: "/"
)
user.save!
puts "Users created"

puts "Creating reviews"
5.times do
  review = Review.new(
    content: "Supeeeeer",
    date: Time.now,
    user_id: User.all.sample.id
  )
  review.save!
end

puts "Reviews ok"


subscription = Subscription.new(
  sub_type: "Séance d'essai gratuite",
  price: 0,
  courses_number: 7
)
subscription.save!

puts "Create subscriptions"
subscription = Subscription.new(
  sub_type: "Réserver une séance",
  price: 15,
  courses_number: 2
)
subscription.save!

subscription = Subscription.new(
  sub_type: "Abonnement 10 séances",
  price: 120,
  courses_number: 5
)
subscription.save!

subscription = Subscription.new(
  sub_type: "Abonnement 20 séances",
  price: 240,
  courses_number: 9
)
subscription.save!


puts "Subscriptions ok"

puts "Creating courses"
course = Course.new(
  date: Time.now,
  available_places: 6,
)
course.save!

course = Course.new(
  date: Time.now,
  available_places: 6,
)
course.save!

course = Course.new(
  date: Time.now,
  available_places: 5,
)
course.save!

course = Course.new(
  date: Time.now,
  available_places: 3,
)
course.save!

course = Course.new(
  date: Time.now,
  available_places: 6,
)
course.save!

puts "Courses ok"
