# json.array! @students.each do |student|
#   json.partial! "student.json.jbuilder", student: student
# end

json.array! @students, partial: "student", as: :student