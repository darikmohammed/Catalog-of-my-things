class Label
  attr_accessor :title, :color
  attr_reader :items

  def initialize(title = 'Unknown', color = 'Unknown')
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items.push(item) unless @items.include?(item)
    item.label = self
  end
  # Serialize Foo object with its class name and arguments
  def to_json(*args)
    {
      JSON.create_id  => self.class.name,
      'a'             => [ title, color ]
    }.to_json(*args)
  end
  # Deserialize JSON string by constructing new Foo object with arguments.
  def self.json_create(object)
    new(*object['a'])
  end
end
