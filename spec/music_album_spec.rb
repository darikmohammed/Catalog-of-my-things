require 'rspec'
require_relative '../lib/music_album'

describe 'Music Album' do
  before do
    @music_album = MusicAlbum.new('02/01/2020', false, false)
  end

  context '#new' do
    it 'should be instance of book' do
      expect(@music_album).to be_instance_of MusicAlbum
    end
  end

  context '#move_to_archive' do
    it 'should not be archive' do
      expect(@music_album.archived).to eq false
    end

    it 'should be archive' do
      music_album2 = MusicAlbum.new('02/01/2000', false, true)
      music_album2.move_to_archive
      expect(music_album2.archived).to be true
    end
  end

  context 'Update attributes' do
    it 'should update on spotify' do
      @music_album.on_spotify = false
      expect(@music_album.on_spotify).to eq false
    end
  end
end
