#!/home/braxton/.rbenv/shims/ruby

class Student
	attr_accessor :name, :grade

	def initialize(name, grade)
		self.name = name
		self.grade = grade
	end

	def better_grade_than?(other_student)
		grade > other_student.grade
	end

	private
	
	def grade_getter
		self.grade
	end

end

jessica = Student.new('Jessica', 82)
craig = Student.new('Craig', 76)

p craig.better_grade_than?(jessica)
p jessica.better_grade_than?(craig)