require './lib/author'
require './lib/item'

describe Author do
  before :each do
    @author = Author.new('Olaoluwa', 'Owoeye')
  end

  it 'Should return a new Author object' do
    expect(@author.class).to eql Author
  end

  it 'Should return a length of 4' do
    item = Item.new('05/11/2001', archived: true)
    item2 = Item.new('05/11/2002', archived: true)
    item3 = Item.new('05/11/2003', archived: false)
    item4 = Item.new('05/11/2004', archived: true)
    @author.add_item(item)
    @author.add_item(item2)
    @author.add_item(item3)
    @author.add_item(item4)
    expect(@author.items.length).to eql 4
  end

  it 'Should return an empty array' do
    item = Item.new('05/11/2001', archived: true)
    @author.add_item(item)
    @author.items.pop
    empt = []
    expect(@author.items).to eql empt
  end

  it 'Should push to the array' do
    item = Item.new('05/11/2001', archived: true)
    @author.items.push(item)
    empt = []
    empt.push(item)
    expect(@author.items.length).to eql empt.length
  end

  it 'Should have equal value' do
    item = Item.new('05/11/2001', archived: true)
    @author.add_item(item)
    expect(@author.items[0]).to eql item
  end

  it 'Should have equal value' do
    item = Item.new('05/11/2001', archived: true)
    @author.add_item(item)
    @author.items.pop
    expect(@author.items).to be @author.items
  end
end
