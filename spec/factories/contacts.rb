require 'faker'
FactoryGirl.define do
  factory :contact do
    f_name = Faker::Name.first_name
    l_name = Faker::Name.last_name
    name "#{f_name} #{l_name}"
    title "Director -#{Faker::Commerce.department}"
    company Faker::Company.name
    email Faker::Internet.email(f_name)
    notes Faker::Company.bs
    association :user, factory: :user, email: "override@crash.com"
    #you can use  strategy: :build  if you don't want it to create a
  # contact.goals.build(title: 'Get to know you', notes:"make it happen", due_date: rand(-2..10).days.from_now)
  end
end

# https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
# options
#