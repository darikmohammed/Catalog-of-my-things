require_relative 'item'

class Game < Item
  attr_accessor :publisher, :last_played_at

  def initialize(publish_date = 'Undefined', publisher = 'Undefined', last_played_at = 'Undefined', archived: false)
    super(publish_date, archived: archived)
    @publisher = publisher
    @last_played_at = last_played_at
  end

  private

  def can_be_archieved?
    super && @last_played_at > 2
  end
end
