# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
holiday = Category.find_or_create_by(name: "Holiday")
birthday = Category.find_or_create_by(name: "Birthday")
balloon = Supply.find_or_create_by(name: "Balloon")
cake = Supply.find_or_create_by(name: "Cake")
hotdog = Supply.find_or_create_by(name: "Hot Dogs")
x = Party.find_or_create_by(name:"The Halloween", date:Time.now, category: holiday, private: false, budget: 500)
Party.find_or_create_by(name:"The Xmas Party", date:Time.now, category: holiday, private: true, budget: 175)
Party.find_or_create_by(name:"The Dog Birthday", date:Time.now, category: birthday, private: true, budget: 200)
Party.find_or_create_by(name:"The 4th of July", date:Time.now, category: holiday, private: false, budget: 150)

x.supplies = [balloon, cake]