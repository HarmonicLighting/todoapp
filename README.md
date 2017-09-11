- MVC
- Model, View, Controller

Start the server

Create a new todo resource √

- Learn CRUD - database operations
- C - Create, R - Read, U - Update, D - Delete
- What is a migration - create a table, update, delete -> we use a migration file

- How do we communicate with the database layer? - through models
- We will need a Todo models
- Routes - all the different ones

- Create a few Todo's

- Rails console


- Creating Todos

name - what kind of todo
description - details of the todo

Now I have a table
???

To create a todo:
Initiate a new Todo object
Save the object to database

.new creates a new object, it's just on ruby level
.save actually saves the object into the database
.create -> this will impact database right away as long as no errors occur
.destroy -> deletes the entry from the database

Other rails console methods

//----------------------------------

wrap section 1 -

- read about routes
- resources :todos what will it create?
- read about 1-to-many associations

resources :todos
Gives me all of the CRUD routes for todos

// SECTION 2

- routes!
- resources :todos

For a new Todo:

Initiate a Todo instance variable
todo1 = todo.new
instance variable

Corresponding actions:
new - form to create a new todo
submits to create - hits the database or gives an error

edit - form to edit an existing todo
submits to update - hots the database with patch or gives an error

index
lists all todos

delete
deletes a todo

// Version Control! - git
