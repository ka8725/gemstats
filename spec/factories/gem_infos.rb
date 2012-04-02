# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gem_info do
    name        'my_gem_name'
    version     '0.0.1'
    downloads   111
  end
end
