json.id student.id
if student.full_name.starts_with?("M")
  json.full_name student.full_name + " is a Jack Spy."
else
  json.full_name student.full_name
end
json.email student.email
json.birthdate student.birthdate
json.university student.university
json.pokemon student.pokemon