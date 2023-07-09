# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "seeding data"
product = Product.new({ name: "Wusthof 8 inch chefs knife", price: "170", image_url: "https://cdn.shopify.com/s/files/1/0372/6232/7941/products/1030100120.png?v=1635407724", description: "A German chef knife, very sharp!" })
product.save

product = Product.new({ name: "Measuring spoons", price: "17", image_url: "https://m.media-amazon.com/images/I/61kf4g72neL._AC_SL1200_.jpg", description: "A colorful set of measuring spoons." })
product.save
puts "Database seeded!"
