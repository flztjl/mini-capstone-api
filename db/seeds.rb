# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.create([{ id: 1, name: "apple", price: 2, image_url: "https://as1.ftcdn.net/v2/jpg/01/76/97/96/
                        1000_F_176979696_hqfioFYq7pX13dmiu9ENrpsHZy1yM3Dt.jpg", description: "This is apple, it is a fruit" },
                { id: 2, name: "orange", price: 3, image_url: "https://images.pexels.com/photos/161559/background-bitter-breakfast-bright-161559.jpeg?cs=srgb&dl=pexels-pixabay-161559.jpg&fm=jpg", description: "This is orange, it is a fruit" }])
