# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email:"kangsheng@gmail.com", name:"kangsheng", password: "kang", password_confirmation: "kang")
User.create(email:"woop@gmail.com", name:"Woopa", password: "kang", password_confirmation: "kang")
User.create(email:"awesome@gmail.com", name:"mr. awesome", password: "kang", password_confirmation: "kang")

# Review.create(
#   title:"Char Kway Teow",
#   body:"Hmm.. A true Singaporean delicacy",
#   image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Charkwayteow.JPG/500px-Charkwayteow.JPG",
#   taste: 3,
#   price: 1,
#   location: 3,
#   user_id: 1)
