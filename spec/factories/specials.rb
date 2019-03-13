FactoryBot.define do
  factory :special do
    comedian
    sequence(:title) { |n| "Special #{n}"}
    length { 55 }
    image { "http://comedyact.com.au/wp-content/themes/comedyact2015/img/logo_comedyACT.png" }
  end
end
