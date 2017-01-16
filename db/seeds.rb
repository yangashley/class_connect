require 'faker'

3.times do
	name = Faker::Name.name 
	name = name.split(" ")
  teacher_info = {
    first_name: name[0],
    last_name: name[-1],
    email: Faker::Internet.email,
    password: "password"
  }
  User.create(teacher_info)
end

30.times do
	name = Faker::Name.name 
	name = name.split(" ")
  student_info = {
    first_name: name[0],
    last_name: name[-1]
  }
  Student.create(student_info)
end

5.times do
  section_info = {
    title: ["Music", "Art", "Gym", "AM Kindergarten", "PM Kindergarten"].sample
  }
  Section.create(section_info)
end

100.times do
  point_info = {
    student_id: (1..30).to_a.sample,
    teacher_id: (1..3).to_a.sample, 
    section_id: (1..3).to_a.sample,
    value: [1, -1].sample
  }
  Point.create(point_info)
end

60.times do
  enrollment_info = {
    student_id: (1..30).to_a.sample,
    section_id: (1..5).to_a.sample
  }
  Enrollment.create(enrollment_info)
end

5.times do
  assignment_info = {
    section_id: (1..5).to_a.sample,
    teacher_id: (1..3).to_a.sample 
  }
  Assignment.create(assignment_info)
end


