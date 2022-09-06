require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(publish_date, archived: false, on_spotify: false)
    super(publish_date, archived: archived)
    @on_spotify = on_spotify
  end

  private

  def can_be_archieved?
    return true if super && @on_spotify == true

    false
  end
end
