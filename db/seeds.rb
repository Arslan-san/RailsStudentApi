require 'action_view'
include ActionView::Helpers::NumberHelper


5.times do
  UniStudent.create({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    gpa: number_with_precision(Faker::Number.between(from: 2.0, to: 4), :precision => 2),
    university:Faker::University.name
    })
end
