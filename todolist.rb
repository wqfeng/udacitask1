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


end

class Item
  # methods and stuff go here
  attr_accessor :description, :completed_status

  # Initialize item with a description and marked as
  # not complete
  def initialize(item_description)
    @description = item_description
    @completed_status = false
  end

  def competed?
    return @completed_status
  end

  def to_s
  	@description + " " * (50 - @description.length)  + "Completed: #{@completed_status}"

  end

end
