# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({ username: "Chris", password:"password"})
User.create({ username: "Kris", password:"password"})
User.create({ username: "Christine", password:"password"})
User.create({ username: "Christopher", password:"password"})
User.create({ username: "Christoph", password:"password"})
User.create({ username: "Christian", password:"password"})
User.create({ username: "Chrisafulo", password:"password"})

Chat.create({ message: "This app is great.", user_id: 5})
Chat.create({ message: "How do I logout?", user_id: 4})
Chat.create({ message: "Ask a friend to join.", user_id: 3})
Chat.create({ message: "Let's start a new chatroom.", user_id: 2})
Chat.create({ message: "Is there a version of this in the App store?", user_id: 1})
Chat.create({ message: "I'm not a fan of this app.", user_id: 4})
Chat.create({ message: "Can we post a photo?", user_id: 3})
Chat.create({ message: "Here's a poem I wrote: Roses are Red Violets are blue, this app rocks and so do you.", user_id: 2})
Chat.create({ message: "Goodnight everyone", user_id: 1})
Chat.create({ message: "Peace, love and this app.", user_id: 1})
Chat.create({ message: "Chris McCammon is an awesome Rails Engineer.", user_id: 5})
