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

  def add_music
    puts "\n*********\nAdding a Music Album"
    puts 'Please enter the following datas'
    puts '---------'
    puts 'On_spotify true or false:'
    on_spotify = gets.chomp
    puts "Publish Date 'dd/mm/yyyy':"
    publish_date = gets.chomp.to_s
    puts "\n*********\nAdding a new Genre"
    puts '---------'
    puts 'Genre name'
    name = gets.chomp.to_s
    genre = Genre.new(name)
    @app.add_genre(genre)
    music = MusicAlbum.new(publish_date, on_spotify: on_spotify)
    @app.add_music(music)
    music.add_genre(genre)
    puts "\n\nNew MusicAlbum Added\n"
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
