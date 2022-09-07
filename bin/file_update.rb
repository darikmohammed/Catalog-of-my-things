require 'json'

module FileUpdate
  def write_json
    File.write('data/book.json', '',mode: 'w')
    @app.books.each do |book|
      json_book = JSON.generate(book)
      File.write('data/book.json', "#{json_book}\n", mode: 'a')
    end
    @app.labels.each do |label|
      json_label = JSON.generate(label)
      File.write('data/label.json', "#{json_label}\n", mode: 'a')
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

  def reader_labels
    unless File.exist?('data/label.json')
      File.open('data/label.json', 'w')
      return []
    end
    labels = []
    File.foreach('data/label.json') do |line|
      labels << JSON.parse(line, create_additions:true )
    end
    labels
  end

end
