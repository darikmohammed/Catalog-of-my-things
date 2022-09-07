module AddFile
  def add_book
    puts "\n*********\nAdding Book"
    puts 'Please enter the following datas'
    puts '---------'
    puts 'Publisher:'
    publisher = gets.chomp.to_s
    puts 'Cover State:'
    cover_state = gets.chomp.to_s
    puts "Publish Date 'dd/mm/yyyy':"
    publish_date = gets.chomp.to_s
    book = Book.new(publish_date, publisher, cover_state)
    @app.add_book(book)
    puts "\n\nNew book Added\n"
  end
end
