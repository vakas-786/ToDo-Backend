Task.destroy_all 
Category.destroy_all 
User.destroy_all

User.create(username: 'test', password: 'password')

Task.create(text: "Buy rice", category: "Food", user_id: User.all.first.id)
Task.create(text: "Save a tenner", category: "Money", user_id: User.all.first.id)
Task.create(text: "Build a todo app", category: "Code", user_id: User.all.first.id)
Task.create(text: "Build a todo API", category: "Code", user_id: User.all.first.id)
Task.create(text: "Get an ISA", category: "Money", user_id: User.all.first.id)
Task.create(text: "Cook rice", category: "Food", user_id: User.all.first.id)
Task.create(text: "Tidy house", category: "Misc", user_id: User.all.first.id)


Category.create(name: 'All', user_id: User.all.first.id)
Category.create(name: 'Code', user_id: User.all.first.id)
Category.create(name: 'Food', user_id: User.all.first.id)
Category.create(name: 'Money', user_id: User.all.first.id)
Category.create(name: 'Misc', user_id: User.all.first.id)

