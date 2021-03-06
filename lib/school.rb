require 'pry'
# code here!
class School
	attr_accessor :name, :roster

	def initialize(name)
		@roster = {}
		@name = name
	end

	def add_student(name, grade)
		@name = name
		@grade = grade
		@roster[grade] ||= []
		@roster[grade] << name
	end

	def grade(grade)
		# binding.pry
		@roster[grade]
	end

	def sort
		new_roster = @roster.sort.to_h
		new_roster.each do |grade, names|
			new_roster[grade] = names.sort
		end
		new_roster
	end
end
