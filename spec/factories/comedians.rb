FactoryBot.define do
  factory :comedian do
    sequence(:name) { |n| "John Doe #{n}"}
    age { 25 }
    city { "Portland" }
  end
end
