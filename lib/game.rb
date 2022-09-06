require_relative 'item'

class Game < Item
  attr_accessor :publisher, :state

  def initialize(publish_date = 'Undefined', publisher = 'Undefined', state = 'Undefined', archived: false)
    super(publish_date, archived: archived)
    @publisher = publisher
    @state = state
  end

  private

  def can_be_archieved?
    super && @state > 2
  end
end
