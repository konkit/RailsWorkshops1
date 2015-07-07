# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(firstname: 'James', lastname: 'Hetfield', email: 'james@hetfield.com', password: '321321321', password_confirmation: '321321321')
user2 = User.create(firstname: 'Jimmy', lastname: 'Page', email: 'jimmy@page.com', password: '321321321', password_confirmation: '321321321')
user3 = User.create(firstname: 'Bruce', lastname: 'Dickinson', email: 'bruce@dickinson.com', password: '321321321', password_confirmation: '321321321')
user4 = User.create(firstname: 'Lemmy', lastname: 'Kilmister', email: 'lemmy@kilmister.com', password: '321321321', password_confirmation: '321321321')
user5 = User.create(firstname: 'Dave', lastname: 'Grohl', email: 'dave@grohl.com', password: '321321321', password_confirmation: '321321321')

admin = User.create(admin: true, firstname: 'Morgan', lastname: 'Freeman', email: 'admin@thisapp.com', password: '321321321', password_confirmation: '321321321')

category1 = Category.create(name: 'Category1')
category2 = Category.create(name: 'Category2')
category3 = Category.create(name: 'Category3')

product1 = Product.create(title: 'Product 1',  description: 'This is great product! Number one!', price: 30, user: user1, category: category1)
product2 = Product.create(title: 'Product 2',  description: 'This is quite good product too!', price: 20, user: user2, category: category2)
product3 = Product.create(title: 'Product 3',  description: 'This one is the cheapest!', price: 10, user: user3, category: category2)
product4 = Product.create(title: 'Other product', description: 'This product is something else', price: 123, user: user4, category: category3)

review1 = Review.create(content: 'It is great!', rating: 5, product: product1, user: user3)
review2 = Review.create(content: 'It is really bad!', rating: 1, product: product1, user: user2)

review3 = Review.create(content: 'It is great!', rating: 5, product: product2, user: user3)
review4 = Review.create(content: 'It is OK!', rating: 4, product: product2, user: user5)
review5 = Review.create(content: 'It is really bad!', rating: 1, product: product2, user: user1)

review6 = Review.create(content: 'Its ok!', rating: 4, product: product3, user: user5)

review7 = Review.create(content: 'I do not recommend', rating: 1, product: product4, user: user5)