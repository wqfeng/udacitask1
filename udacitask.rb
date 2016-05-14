require_relative 'todolist.rb'

# Creates a new todo list
todo_list = TodoList.new("Qun Feng's TODOs")

# Add four new items
todo_list.add_item("Submit the Udacitask project")
todo_list.add_item("Heat vs Raptos tomorrow")
todo_list.add_item("Running for fun!")
# update a due date
todo_list.items[0].due_date = Time.new(2016, 5, 10)

# Print the list
puts todo_list

# Delete the first item
todo_list.remove_item(0)

# Print the list
puts todo_list

# Delete the second item
todo_list.remove_item(0)

# Print the list
puts todo_list

# Update the completion status of the first item to complete
todo_list.update_status(0, true)

# Print the list
puts todo_list

# Update the title of the list
todo_list.title = "Almost finished!"

# Print the list
puts todo_list

# save the todo list to a file
todo_list.save
