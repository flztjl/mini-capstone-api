# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(name: "Jacky", email: "znsalesgroup@gmail.com", password: "password")
User.create!(name: "Nan", email: "zhunan8868@gmail.com", password: "password", user_role: "admin")
User.create!(name: "Admin", email: "ssrsrfy.jl@gmail.com", password: "password", user_role: "admin")

Supplier.create!(name: "JC sales", email: "amazon@test.com", phone_number: "123223432432")
Supplier.create!(name: "Verna", email: "thinkgeek@test.com", phone_number: "223223432432")

Product.create!(supplier_id: 1, quantity: 100, name: "WNYX Mug", price: 2, description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape")
Product.create!(supplier_id: 1, quantity: 100, name: "Hitchhiker's Guide to the Galaxy", price: 42, description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom.")
Product.create!(supplier_id: 2, quantity: 100, name: "Lightsaber", price: 270, description: "Part laser, part samurai sword, all awesome. The lightsaber is an elegant weapon for a more civilized age, not nearly as clumsy as a blaster")
Product.create!(supplier_id: 1, quantity: 100, name: "Space Cowboy Laser Gun", price: 170, description: "This weapon has no other description than, Shiney!")
Product.create!(supplier_id: 2, quantity: 100, name: "DnD Dice set", price: 57, description: "Take down mighty dragons with this timeless set of 20 sided wonders")
Product.create!(supplier_id: 1, quantity: 100, name: "Sonic Screwdriver", price: 9, description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood")
Product.create!(supplier_id: 1, quantity: 100, name: "Yoda sleeping bag", price: 40, description: "For real for real bruh")

Image.create!(product_id: 1, image_url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg")
Image.create!(product_id: 2, image_url: "http://www.notcot.com/images/guide.gif")
Image.create!(product_id: 3, image_url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif")
Image.create!(product_id: 3, image_url: "https://cdn-ssl.s7.disneystore.com/is/image/DisneyShopping/1814047624769-1?fmt=jpeg&qlt=90&wid=608&hei=608")
Image.create!(product_id: 3, image_url: "https://neosabers.com/wp-content/uploads/2022/06/037_6.jpg")
Image.create!(product_id: 3, image_url: "https://sm.ign.com/t/ign_ap/feature/s/star-wars-/star-wars-school-the-history-of-the-lightsaber_sacd.1280.jpg")
Image.create!(product_id: 4, image_url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776")
Image.create!(product_id: 5, image_url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg")
Image.create!(product_id: 6, image_url: "https://sketchfab.com/blogs/community/wp-content/uploads/2020/04/image2-2.jpg")
Image.create!(product_id: 7, image_url: "https://staticdelivery.nexusmods.com/mods/1151/images/12353-0-1461721930.png")

Category.create!(name: "Weapons")
Category.create!(name: "Household items")
Category.create!(name: "Star Wars")
Category.create!(name: "Games")

CategoryProduct.create!(category_id: 2, product_id: 1)
CategoryProduct.create!(category_id: 2, product_id: 2)
CategoryProduct.create!(category_id: 1, product_id: 3)
CategoryProduct.create!(category_id: 3, product_id: 3)
CategoryProduct.create!(category_id: 1, product_id: 4)
CategoryProduct.create!(category_id: 4, product_id: 5)
CategoryProduct.create!(category_id: 1, product_id: 6)
CategoryProduct.create!(category_id: 2, product_id: 7)
CategoryProduct.create!(category_id: 3, product_id: 7)