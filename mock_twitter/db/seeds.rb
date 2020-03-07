# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: 'sharat1@gmail.com', password: 'password', password: 'password')
user2 = User.create(email: 'sharat2@gmail.com', password: 'password', password: 'password')
user3 = User.create(email: 'sharat3@gmail.com', password: 'password', password: 'password')

Tweet.create(heading: 'This is sample tweet 1', description: 'This is sample tweet 1', user_id: user1.id)

Tweet.create(heading: 'This is sample tweet 2', description: 'This is sample tweet 2', user_id: user1.id)

Tweet.create(heading: 'This is sample tweet 3', description: 'This is sample tweet 3', user_id: user2.id)

Tweet.create(heading: 'This is sample tweet 4', description: 'This is sample tweet 3', user_id: user2.id)

Tweet.create(heading: 'This is sample tweet 5', description: 'This is sample tweet 5', user_id: user3.id)

Tweet.create(heading: 'This is sample tweet 6', description: 'This is sample tweet 6', user_id: user3.id)

