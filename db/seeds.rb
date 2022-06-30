# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first))

puts "deleting all users"
Booking.destroy_all
Service.destroy_all
User.destroy_all

User.create!(email: "george@gmail.com", password: "123456", first_name: "George", last_name: "Woods", role: "teacher", bio: "I have so many skills, and I want to share them with the world")
User.create!(email: "marlon@gmail.com", password: "123456", first_name: "Marlon", last_name: "Wanderllich", role: "student")
User.create!(email: "ricardo@gmail.com", password: "123456", first_name: "Ricardo", last_name: "Mil", role: "student")
User.create!(email: "marjolijn@gmail.com", password: "123456", first_name: "Marjolijn", last_name: "Van der Ree", role: "teacher")
User.create!(email: "ivo@gmail.com", password: "123456", first_name: "Ivo", last_name: "Mcteacher", role: "teacher", bio: "I am one skillful guy, don't get to close, I'm dangerous!" )

puts "creating all users again"

puts "deleting all services"



service_one = Service.new(skill_name: "Guitar lessons", price_per_hour: 75, availability: true, user: User.first, description: "Learn all the classics")
file_one = URI.open('https://images.unsplash.com/photo-1604286742257-9d211b05b0df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
service_one.photo.attach(io: file_one, filename: 'nes.png', content_type: 'image/png')
service_one.save
service_two = Service.new(skill_name: "Football skills", price_per_hour: 150, availability: true, user: User.first, description: "Learn to play like Messi")
file_two = URI.open('https://images.unsplash.com/photo-1517927033932-b3d18e61fb3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1338&q=80')
service_two.photo.attach(io: file_two, filename: 'nes.png', content_type: 'image/png')
service_two.save
service_three = Service.new(skill_name: "Esperanto classes", price_per_hour: 20, availability: true, user: User.first, description: "Learn a completely useless language")
file_three = URI.open('https://images.unsplash.com/photo-1617975609658-2de247badd36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
service_three.photo.attach(io: file_three, filename: 'nes.png', content_type: 'image/png')
service_three.save
service_four = Service.new(skill_name: "Archery for advanced learners", price_per_hour: 400, availability: true, user: User.first, description: "Lethal skills, for really advanced archers")
file_four = URI.open('https://images.unsplash.com/photo-1510925758641-869d353cecc7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
service_four.photo.attach(io: file_four, filename: 'nes.png', content_type: 'image/png')
service_four.save
service_five = Service.new(skill_name: "Korean cooking lessons", price_per_hour: 10, availability: true, user: User.last, description: "spicy and delicious!")
file_five = URI.open('https://images.unsplash.com/photo-1584278858536-52532423b9ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
service_five.photo.attach(io: file_five, filename: 'nes.png', content_type: 'image/png')
service_five.save
service_six = Service.new(skill_name: "Wine tasting", price_per_hour: 40, availability: true, user: User.last, description: "come and learn about wine, or just get sozzled")
file_six = URI.open('https://images.unsplash.com/photo-1598306442928-4d90f32c6866?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80')
service_six.photo.attach(io: file_six, filename: 'nes.png', content_type: 'image/png')
service_six.save
service_seven = Service.new(skill_name: "Horticulture in modern society", price_per_hour: 300, availability: true, user: User.last, description: "learn how to garden like a gangstarrr")
file_seven = URI.open('https://images.unsplash.com/photo-1530836369250-ef72a3f5cda8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
service_seven.photo.attach(io: file_seven, filename: 'nes.png', content_type: 'image/png')
service_seven.save
service_eight = Service.new(skill_name: "Clarinet lessons", price_per_hour: 10, availability: true, user: User.last, description: "Everyone loves the clarinet")
file_eight = URI.open('https://images.unsplash.com/photo-1506601905416-f8802ad753ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
service_eight.photo.attach(io: file_eight, filename: 'nes.png', content_type: 'image/png')
service_eight.save

puts "creating services again"

puts "deleting all bookings"



Booking.create!(status: "pending", user: User.last, service: Service.last)
Booking.create!(status: "confirmed", user: User.last, service: Service.last)
Booking.create!(status: "cancelled", user: User.last, service: Service.last)
Booking.create!(status: "confirmed", user: User.last, service: Service.last)
Booking.create!(status: "pending", user: User.last, service: Service.last)

puts "creating bookings again"
