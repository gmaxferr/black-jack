
require_relative 'student'

s = Student.new("John", "Doe")
puts "First Name: #{s.first_name}"
puts "Last Name #{s.last_name}"
puts "Full Name #{s.full_name}"
puts "Total Students: '#{Student.total_count}'"
puts

s1 = Student.new("Livia", "Sanders")
puts "First Name: #{s1.first_name}"
puts "Last Name #{s1.last_name}"
puts "Full Name #{s1.full_name}"
puts "Total Students: '#{Student.total_count}'"
puts
