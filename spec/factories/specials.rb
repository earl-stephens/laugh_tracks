FactoryBot.define do
  factory :special do
    comedian
    sequence(:title) { |n| "Special #{n}"}
    length { 55 }
  end
end
