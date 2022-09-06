class Label
  attr_accessor :title, :color

  def initialize(title = 'Unknown', color = 'Unknown')
    @title = title
    @color = color
    @items = items
  end

  def add_item(item)
    @items.push(item) unless @items.include?(item)
    item.label = self
  end
end
