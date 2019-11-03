# frozen_string_literal: true

Product.destroy_all
Category.destroy_all
AdminUser.destroy_all
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

prods = Product.create(name: 'stick', description: '99 flex hockey stick', price: 99.99)

cat = Category.create(name: 'Equipment')

puts Product.count
puts Category.count
