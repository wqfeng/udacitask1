class TodoList
  # methods and stuff go here
  attr_accessor :title, :items

  def initialize(title)
    @title = title
    @items = Array.new
  end

  # Creates a new Item and adds it to the array of Items
  def add_item(new_item)
    item = Item.new(new_item)
    @items.push(item)
  end

  # delete an item with titile
  def remove_item(id)
    @items.delete_at(id)
  end

  # update status
  def update_status(id, status)
    @items[id].completed_status = status
  end

  # it will be called automatically in a to string context
  def to_s
  	s = "---------------------\n#{@title}\n---------------------\n"
    @items.each_with_index {|e, id| s += "#{id + 1} - #{e}\n"}

    return s
  end

  def save
  	f = File.new("todo.txt", "w+")
  	f.puts(to_s)
  	f.close()
  end


end

class Item
  # methods and stuff go here
  attr_accessor :description, :completed_status, :due_date

  # Initialize item with a description and marked as
  # not complete
  def initialize(item_description)
    @description = item_description
    @completed_status = false
    @due_date = Time.new(2016, 5, 31)
  end

  def competed?
    return @completed_status
  end

  def to_s
  	prefix + @description + " " * (30 - @description.length) + 
  	"Completed: #{@completed_status}  Due Date: #{@due_date.strftime('%b/%d/%Y')}"

  end

  def prefix
  	(@due_date < Time.now)? "** ": ""
  end


end
