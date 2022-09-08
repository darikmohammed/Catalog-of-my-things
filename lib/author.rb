class Author
  attr_accessor :first_name, :last_name
  attr_reader :items

  def initialize(first_name = 'Undefined', last_name = 'Undefined')
    @last_name = last_name
    @first_name = first_name
    @items = []
  end

  def add_item(item)
    @items.push(item) unless @items.include?(item)
    item.author = self
  end

  # Serialize Foo object with its class name and arguments
  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'a' => [first_name, last_name]
    }.to_json(*args)
  end

  # Deserialize JSON string by constructing new Foo object with arguments.
  def self.json_create(object)
    new(*object['a'])
  end
end
