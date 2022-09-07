require 'rspec'
require_relative '../lib/item'
require_relative '../lib/genre'

describe 'Genre' do
  before do
    @genre = Genre.new('Action-Adventure')
  end

  context '#new' do
    it 'should be an instance of Label' do
      expect(@genre).to be_instance_of Genre
    end
  end

  context '#add_item' do
    it 'should add item to items array' do
      item = Item.new('02/01/1988')
      @genre.add_item(item)

      expect(@genre.items.length).to be 1
    end

    it 'should add label to the item object' do
      item = Item.new('02/01/1988')
      @genre.add_item(item)

      expect(item.genre).to be @genre
    end
  end

  context '#add_genre' do
    it 'should add genre in item' do
      item = Item.new('02/01/1988')
      item.add_genre(@genre)

      expect(item.genre).to be @genre
    end

    it 'should add item in genre' do
      item = Item.new('02/01/1988')
      item.add_genre(@genre)

      expect(@genre.items.length).to eq 1
    end
  end
end
