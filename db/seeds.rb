require 'faker'

5.times do
  Question.create!(title: Faker::Company.name,
                  content: Faker::Company.catch_phrase )
end

Question.all.each do |question|
  answers = []
  (1..5).to_a.sample.times do
    answers << Answer.create!(title: Faker::Lorem.word,
                              content: Faker::Lorem.sentence)
  end
  question.answers << answers
end

