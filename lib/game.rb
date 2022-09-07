require_relative 'item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(publish_date = Time.now.strftime('%d/%m/%Y'), last_played_at = Time.now.strftime('%d/%m/%Y'),
                 multiplayer: false, archived: false)
    super(publish_date, archived: archived)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  private

  def can_be_archieved?
    super && (Date.today.year - Date.parse(@last_played_at).year) > 2
  end
end
