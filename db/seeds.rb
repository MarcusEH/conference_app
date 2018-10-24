# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Speaker.create({first_name: "Dani", last_name: "Zaghian", email: "danielle@actualize.co"})

# 10.times do
#   speakerfaker = Speaker.new(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, email: "#{FFaker::Name.first_name}#{FFaker::Name.last_name}@gmail.com")
#   speakerfaker.save
# end

# meeting4 = Meeting.new({title: "Hop.js", agenda: "Hop.js: JavaScript Multitier Programming", time: "3:00 pm"})
# meeting4.save

speakers = Speaker.all

speakers.each do |speaker|
  speaker.gender = ["female", "male"].sample
  speaker.age = rand(18..100)
  speaker.save
  speaker.errors.full_messages
end