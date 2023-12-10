FactoryBot.define do
  factory :post do
    title {Faker::Lorem.sentence(word_count: 3)}
    content { Faker::Lorem.paragraph_by_chars(number: 150) }
  end
end

