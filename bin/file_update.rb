require 'json'

module FileUpdate
  def write_json
    File.write('data/book.json', '',mode: 'w')
    @app.books.each do |book|
      json_book = JSON.generate(book)
      File.write('data/book.json', "#{json_book}\n", mode: 'a')
    end
  end

  def reader_books
    unless File.exist?('data/book.json')
      File.open('data/books.json', 'w')
      return []
    end
    books = []
    File.foreach('data/book.json') do |line|
      books << JSON.parse(line, create_additions: true)
    end
    books
  end
end
