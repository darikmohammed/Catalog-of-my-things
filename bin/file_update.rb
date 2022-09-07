require 'json'

module FileUpdate
  def write_json
    File.write('data/book.json', '',mode: 'w')
    @app.books.each do |book|
      json_book = JSON.generate(book)
      File.write('data/book.json', "#{json_book}\n", mode: 'a')
    end
  end
end
