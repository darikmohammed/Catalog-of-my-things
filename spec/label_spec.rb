require 'rspec'
require_relative '../lib/label'
require_relative '../lib/item'

describe 'Label' do
  before do
    @label = Label.new('Harry Potter', 'red')
  end

  context '#new' do
    it 'should be instance of Label' do
      expect(@label).to be_instance_of Label
    end
  end

  context '#add_item' do
    it 'should add item to items array' do
      item = Item.new('12/03/2000', archived: true)
      @label.add_item(item)

      expect(@label.items.length).to be 1
    end
    it 'should items array should have instance of item' do
      item = Item.new('12/03/2000', archived: true)
      @label.add_item(item)

      expect(@label.items[0]).to be_instance_of Item
    end
    it 'should add label to the item object' do
      item = Item.new('12/03/2000', archived: true)
      @label.add_item(item)

      expect(item.label).to be @label
    end
  end

  context '#add_label' do
    it 'should add label in item' do
      item = Item.new('12/03/2000', archived: true)
      item.add_label(@label)

      expect(item.label).to be @label
    end
    it 'should add item in label' do
      item = Item.new('12/03/2000', archived: true)
      item.add_label(@label)

      expect(@label.items.length).to eq 1
    end
    it 'should add instance of item in label' do
      item = Item.new('12/03/2000', archived: true)
      item.add_label(@label)

      expect(@label.items[0]).to be item
    end
  end
end
