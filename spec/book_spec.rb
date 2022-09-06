require 'rspec'
require_relative '../lib/book'

describe 'Book' do
  before do
    @book = Book.new('01/02/2022', 'J K', 'bad', archived: false )
  end

  context '#new' do
    it 'should be instance of Book' do
      expect(@book).to be_instance_of Book
    end
  end

  context '#move_to_archive' do
    it 'should be archived' do
      @book.move_to_archive
      expect(@book.archived).to be true
    end
  end
end
