class Author
  attr_accessor :first_name, :last_name

  def initialize(first_name = 'Undefined', last_name = 'Undefined')
    @last_name = last_name
    @first_name = first_name
    @items = []
  end

  def add_item(item)
    @items.push(item) unless @items.include?(item)
    item.author = self
  end
end
