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

  private

  def can_be_archieved?
    super || @cover_state == 'bad'
  end
end
