Task.destroy_all 
Category.destroy_all 

Task.create(text: "Buy rice", category: "Food")
Task.create(text: "Save a tenner", category: "Money")
Task.create(text: "Build a todo app", category: "Code")
Task.create(text: "Build a todo API", category: "Code")
Task.create(text: "Get an ISA", category: "Money")
Task.create(text: "Cook rice", category: "Food")
Task.create(text: "Tidy house", category: "Misc")


Category.create(name: 'All')
Category.create(name: 'Code')
Category.create(name: 'Food')
Category.create(name: 'Money')
Category.create(name: 'Misc')

