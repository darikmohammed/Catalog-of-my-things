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

  def add_game
    puts "\n*********\nAdding Game"
    puts 'Please enter the following datas'
    puts '---------'

    puts 'First Name:'
    first_name = gets.chomp.to_s
    puts 'Last Name:'
    last_name = gets.chomp.to_s
    author = Author.new(first_name, last_name)
    @app.add_author(author)

    puts "Publish Date 'dd/mm/yyyy':"
    publish_date = gets.chomp.to_s
    puts "Last played 'dd/mm/yyyy':"
    last_played_at = gets.chomp.to_s
    game = Game.new(publish_date, last_played_at)
    @app.add_game(game)
    puts "\n\nNew Game Added\n"
  end
end
