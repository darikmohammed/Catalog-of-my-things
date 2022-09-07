module AddFile
  def add_book
    puts "\n*********\nAdding Book"
    puts "Please enter the following data's"
    puts '---------'
    puts 'Publisher:'
    publisher = gets.chomp.to_s
    puts 'Cover State:'
    cover_state = gets.chomp.to_s
    puts "Publish Date 'dd/mm/yyyy':"
    publish_date = gets.chomp.to_s
    book = Book.new(publish_date, publisher, cover_state)
    label = add_label
    book.add_label(label)
    @app.add_label(label)
    @app.add_book(book)
    puts "\n\nNew book Added\n"
  end

  def add_label
    puts "\n*********\nAdding Label for the book."
    puts "Please enter the following data's"
    puts '---------'
    puts 'Title:'
    title = gets.chomp.to_s
    puts 'Color:'
    color = gets.chomp.to_s
    Label.new(title, color)
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
    game.add_author(author)
    puts "\n\nNew Game Added\n"
  end
end
