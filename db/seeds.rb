# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

User.create!(name: "Ayan Das", age: 23, email_id: 'ayan.das@email.com', location: 'Mumbai', department: 'ITG-SDM', designation: 'SE')
User.create!(name: "Bijay Saha", age: 23, email_id: 'bijay.saha@email.com', location: 'Pune', department: 'ITG-ADM', designation: 'SSE')
User.create!(name: "Mou Das", age: 26, email_id: 'mou.das@email.com', location: 'Pune', department: 'IT', designation: 'BA')
User.create!(name: "Laboni Roy", age: 24, email_id: 'laboni.roy@email.com', location: 'Pune', department: 'IT', designation: 'SE')
User.create!(name: "Manish Kumar", age: 35, email_id: 'manish.kumar@email.com', location: 'Mumbai', department: 'ITG-SDM', designation: 'PM')
User.create!(name: "Arup Rakshit", age: 27, email_id: 'arup.rakshit@email.com', location: 'Mumbai', department: 'ITG-SDM', designation: 'SSE')
User.create!(name: "Piyush Kour", age: 45, email_id: 'ayan.das@email.com', location: 'Mumbai', department: 'ITG-ADM', designation: 'DM')
User.create!(name: "Anima Dey", age: 27, email_id: 'ayan.das@email.com', location: 'Pune', department: 'ITG-ADM', designation: 'BA')
