# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
User.create(name: "uday kumar", user_name: "uday", email: "uday@gmail.com", password: "12345678", password_confirmation: "12345678"  )
user = User.first

Article.destroy_all
1.upto(10) do |i|
  Article.create(name: "iPhone 12SC Plus- #{i}", price: 10+i,  description: "test description for all article- #{i}", user_name: user.user_name)
end
