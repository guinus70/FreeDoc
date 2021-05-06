# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#5.times do
#	doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: 'dentist', zip_code: Faker::Address.postcode)
#end

#5.times do
#	doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: 'surgeon', zip_code: Faker::Address.postcode)
#end

#5.times do
#	doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: 'gynecologist', zip_code: Faker::Address.postcode)
#end

#5.times do
#	doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: 'dermatologist', zip_code: Faker::Address.postcode)
#end

#50.times do
#	patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
#end

20.times do
	city = City.create!(name: Faker::Address.city)
end

Doctor.all.each do |d|
	index = rand(0..19)
	d.city = City.all[index]
	d.save!
end
