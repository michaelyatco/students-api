json.id student.id
if student.full_name.starts_with?("M")
  json.full_name student.full_name + " is a Jack Spy."
else
  json.full_name student.full_name
end
json.first_name student.first_name
json.last_name student.last_name
json.email student.email
json.birthdate student.birthdate
json.university student.university
json.pokemon student.pokemon
json.age 42