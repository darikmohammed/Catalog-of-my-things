require_relative 'item'
require 'date'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publish_date = Time.now.strftime('%d/%m/%Y'), publisher = 'Unknown', cover_state = 'Unknown',
                 archived: false)
    super(publish_date, archived: archived)
    @publisher = publisher
    @cover_state = cover_state
  end

  # Serialize Foo object with its class name and arguments
  def to_json(*args)
    {
      JSON.create_id  => self.class.name,
      'a'             => [ publish_date, publisher, cover_state, archived ]
    }.to_json(*args)
  end
  # Deserialize JSON string by constructing new Foo object with arguments.
  def self.json_create(object)
    new(*object['a'])
  end

  private

  def can_be_archieved?
    super || @cover_state == 'bad'
  end
end
