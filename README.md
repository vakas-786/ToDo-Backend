# Installation
Installation instructions can be found <a href='https://github.com/vakas-786/Community-ToDo-List'>here</a>. 

# Models and Relationships 

User
```sh
    has_many :tasks 
    has_many :categories
```

Task
```sh
    belongs_to :user
```

Category 
```sh
    belongs_to :user
```


