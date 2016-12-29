FactoryGirl.define do
  factory :url, aliases: [:link] do
    title { 'Bar' }
    price 10.00
  end
end
