# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blog do
    sequence(:name) { |n| "Blog #{n}" }
    sequence(:subdomain) { |n| "blog_subdomain_#{n}" }
  end
end
