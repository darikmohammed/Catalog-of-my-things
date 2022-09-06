class Genre
  attr_accessor :name
  attr_reader :items

  def initialize(name = 'Unknown')
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item) unless @items.include?(item)
    item.genre = self
  end
end
