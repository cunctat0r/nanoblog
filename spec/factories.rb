FactoryGirl.define do
  factory :user do
    name "Linus Torvalds"
    email "linus@example.com"
    password "FooBar"
    password_confirmation "FooBar"
  end
end