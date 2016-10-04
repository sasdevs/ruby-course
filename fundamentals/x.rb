require 'pry'

class Roster
  def initialize(roster_file)
    @roster_file = roster_file
  end

  def to_a
    f = File.open(@roster_file)
    @students = f.read.split(',').map do |name|
      Student.new(name.chomp)
    end
  end

  def students
    @students ||= to_a
  end
end

class Student
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def first_name
    @name.split(" ").first
  end

  def last_name
    @name.split(" ").last
  end
end

r = Roster.new('./students.dat')
r.to_a












