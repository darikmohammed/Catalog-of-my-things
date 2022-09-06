require_relative './item'

class MusicAlbum < Item

    def initialize(publish_date, archived: false, on_spotify: false)
        super(publish_date, archived: archived)
        @on_spotify = on_spotify
    end

end