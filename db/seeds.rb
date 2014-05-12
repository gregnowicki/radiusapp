# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def make_contacts(user)
  5.times do
    f_name = Faker::Name.first_name
    l_name = Faker::Name.last_name
    contact = user.contacts.build(name: "#{f_name} #{l_name}", title: "Director -#{Faker::Commerce.department}", company: Faker::Company.name, email: Faker::Internet.email(f_name), notes: Faker::Company.bs)
    contact.goals.build(title: 'Get to know you', notes:"make it happen", due_date: rand(-2..10).days.from_now)
  end
  user.save!
end

unless User.exists?(email: ['admin@radiusapp.com'])
  admin = User.create!(email: 'admin@radiusapp.com', password: 'admin123', password_confirmation: 'admin123')
end

joe  = User.create!(email: 'joe@radiusapp.com', password: 'password', password_confirmation: 'password')

sally = joe.contacts.build(name: 'Sally Sales', title: 'Sales', company: 'Acme sales', email: 'sally@acme.biz', notes: Faker::Company.bs)
sally.goals.build(title: 'Get to know you', notes:"make it happen", due_date: rand(-2..10).days.from_now)

make_contacts(joe)



# see https://github.com/stympy/faker for more interesting faker options