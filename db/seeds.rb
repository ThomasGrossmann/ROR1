# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Teacher.create!([{firstname: 'Teacher', lastname: 'Test', email: 'teacher@test.com', password: '123123', acronym: 'TTT', address: 'Test Address', postal_code: '12345', city: 'Test City', phone: '1234567890'}])
Student.create!([{firstname: 'Student', lastname: 'Test', email: 'student@test.com', password: '123123', acronym: 'STT', address: 'Test Address', postal_code: '12345', city: 'Test City', phone: '1234567890'}])
Dean.create!([{firstname: 'Dean', lastname: 'Test', email: 'dean@test.com', password: '123123', acronym: 'DTT', address: 'Test Address', postal_code: '12345', city: 'Test City', phone: '1234567890'}])
SchoolClass.create!([{name: 'SI-T2a', school_year: 2024, user_id: Teacher.first.id}])
Semester.create!([{start_date: '2021-09-01', end_date: '2022-01-31', number: 1}])
Branch.create!([{name: 'PRW3', status: 0, semester_id: Semester.first.id}])