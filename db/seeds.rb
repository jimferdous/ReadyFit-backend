# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Cart.destroy_all
CartItem.destroy_all
Item.destroy_all

jon = User.create!(name: 'Jon', email: 'jon@example.com', password_digest: '1234')

basketball = Item.create!(name: "Spalding Basketball", image: Faker::LoremFlickr.image(size: "50x60"), description: Faker::Lorem.paragraph, price: "$30" )
boxing_gloves = Item.create!(name: "Boxing Gloves", image: Faker::LoremFlickr.image(size: "50x60"), description: Faker::Lorem.paragraph, price: "$30" )
football = Item.create!(name: "NFL Football", image: Faker::LoremFlickr.image(size: "50x60"), description: Faker::Lorem.paragraph, price: "$30" )
helmet = Item.create!(name: "NFL Helmet", image: Faker::LoremFlickr.image(size: "50x60"), description: Faker::Lorem.paragraph, price: "$30" )
jersey = Item.create!(name: "Basketball Jersey", image: Faker::LoremFlickr.image(size: "50x60"), description: Faker::Lorem.paragraph, price: "$30" )

jon_cart = Cart.create!(user_id: jon.id)

cart_item1 = CartItem.create!(item_id: basketball.id, cart_id: jon_cart.id)
cart_item2 = CartItem.create!(item_id: football.id, cart_id: jon_cart.id)
cart_item3 = CartItem.create!(item_id: helmet.id, cart_id: jon_cart.id)