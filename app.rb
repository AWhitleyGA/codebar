require 'pry'

class Member
  def initialize(full_name)
    @full_name = full_name
  end
  def introduce
    "Hello, my name is #{@full_name}"
  end
end


class Student < Member
  def initialize(full_name, reason)
    super(full_name)
    @reason = reason
  end
end

class Instructor < Member
  def initialize(full_name, bio)
    super(full_name)
    @bio = bio
    @skills = ["Ruby","Javascript","C++"]
  end
  def add_skill(skill)
    @skills << skill
  end
end



class Workshop
  def initialize(date, classroom)
    @date = date
    @classroom = classroom
    @students = []
    @instructors = []
  end
  def add_participant(person)
    person.class == Instructor ? @instructors << person : @students << person
  end
end


Andy = Student.new('Andrew Whitley','To Learn Code')
Jesse = Instructor.new('Jesse Shawl','5 years teaching code')
WDI = Workshop.new('September', 'CR5')


workshop = Workshop.new("12/03/2014", "Shutl")

jane = Student.new("Jane Doe", "I am trying to learn programming and need some help")
lena = Student.new("Lena Smith", "I am really excited about learning to program!")
vicky = Instructor.new("Vicky Ruby", "I want to help people learn coding.")
vicky.add_skill("HTML")
vicky.add_skill("JavaScript")
nicole = Instructor.new("Nicole McMillan", "I have been programming for 5 years in Ruby and want to spread the love")
nicole.add_skill("Ruby")

workshop.add_participant(jane)
workshop.add_participant(lena)
workshop.add_participant(vicky)
workshop.add_participant(nicole)











binding.pry
